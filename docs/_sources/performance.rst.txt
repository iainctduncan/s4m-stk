Appendix: Performance, timing accuracy, and Max settings 
-------------------------------------------------------------------

*NOTE: I should probably move this to main docs. eh?*

The purpose of this appendix is to look in detail timing, latency, performance,
and Max settings. First off, let me assure you that the sequencing code has been tested
exhaustively, and running live sequencers with rock solid timing in Scheme for Max 
absolutely works. That's the good news! If you're willing to pay the CPU cost
you can even get sample accurate timing. 
However, there is overhead to running Scheme, so understanding your options
for balancing timing accuracy, latency, and performance is worthwhile.

Like other dynamic languages such as Python, Ruby, JavaScript, Common Lisp, the s7 Scheme 
interpreter runs a garbage collector (GC). The GC runs occasionally, sweeping through
allocated memory, deleting unused memory references. This is what makes it possible
for us to program without manually allocating and managing memory the way we need to
in languages like C, C++, or Rust. 
On my system, the GC typically takes between 0.5 and 1.5 milliseconds to run, 
but depending on your code and CPU it could take longer. 
If the GC can't finish in time, we get a missed deadline and
our timing will slip - looking at recorded output will show the output getting behind
the correct time. If you have the Max audio setting for Audio in Interrupt selected,
and Max is making sound, you'll probably hear an audio underun too, as this setting
forces the Scheduler thread (the one running s4m) and the audio dsp thread to share
timeslices. If you don't have Audio in Interupt selected, the timing will slip a bit 
but you won't hear an audio click issue.

This means that for super accurate timing, we need to
do two things: run the GC frequently so that it always does it's job quickly, and run 
Max with enough latency that the GC running makes no difference to the timing. 
What sufficient latency is will depend somewhat on what else your machine is doing, 
both in Max, and out of Max, and some of your Max settings. 

The first thing I do is hook up a metronome at about 100ms (experiment!) to a message
box with a **gc** message and send this to s4m inlet 0. This ensures the gc is called
every 100 ms. The interpreter thus runs the gc very frequently, ensuring it doesn't 
have too much to do on each pass.

The Max **I/O Vector Size** is the most important setting. In order to get
bang on accuracy, we need this big enough for the GC to finish running. This is
also the setting that produces the latency of Max to your sound output. A setting
of 512 translates to about 11ms at 44100 sample rate, while 256 is 5.8ms. This is 
ample time, *if Max isn't eating up that time already on audio*. On my machine, I can
run with anywhere from 128 to 1024 on this setting, depending on how much I'm taxing
the CPU, and the recorded output stays accurate to within a ms. If you don't mind
more slop in the timing, you can lower this and increase the Max **scheduler slop**
setting, trading short term accuracy (slop) for CPU use and long term accuracy. This
setting lets Max run the scheduler a bit late but then catches up later. If you have
Max producing no other audio, you can likely get this down to 128 and still get accurate
timing. 

The Max **Signal Vector Size** setting (in Audio Status) is also important to understand.
This determines how many samples of audio are calculated per audio rendering pass. 
If you have Audio Interrupt selected, this will determine how frequently the scheduler
can run. The timing of your scheduler-generated (i.e. s4m) events can only be
as accurate on a small scale as this setting allows. If you want actual *sample accurate*
timing, this needs to be 1! If Max is also making audio, reducing this number increases
the CPU load of Max, and thus requires you to raise the I/O Vector Size. 
So if you need exact attack times to line up with audio generated elsewhere, you should
experiment with lowering this number until you are satisfied. 

I've noticed a few things that might be helpful.

* Max is not good at hosting VST instruments. If you want to use VSTs and run at
  low latency you should probably pipe midi to a DAW such as Live. I get much better
  performance running the VSTs in live and using a virtual midi driver.
* If you don't need sample accurate timing, you might want to run with Audio Interrupt
  off and more Scheduler Slop. For a live use where s4m is doing all the timing,
  and you absolutely can't chance an audio underrun, this might be appropriate.
* Reducing any visual updates from audio (such as VU meters in the live.gain object)
  dramatically improves performance, allowing lower latency.
* If you have lots of GUI elements doing things in the Max low priority thread, you
  might want to lower the servicing of the low priority thread and the refresh rate
  in your max settings. (Event Interval, Redraw Queue Throttle, and Refresh Rate).
* If you make a very large Scheme program, you might want to split it into a low and
  high priority instance. For example, if you want to drive a large bank of GUI elements,
  that can all be done in a low priority thread, and you can use messages between Scheme
  instances or an intermediate data store such as a buffer to pass data between them.

The best thing to do is to experiment with these settings, recording the output, and
take a look in your audio editor. 


