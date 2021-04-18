Tutorial 1 - Multi-Track Step Sequencer
================================================================================

In this first tutorial, we're going to make a one-track sequencer that plays from a
grid of data at a constant rate. By the end of the tutorial, you'll have the tools
for building a step-sequencer that you can work with using Scheme code, Max widgets,
or midi input, with on-screen displays. This tutorial covers enough of each
of these areas (engine, controller, display) to give you the building blocks
to make a full featured step sequencer customized to your needs and workflow.
This is the first publication in the Scheme For Max Sequencer Toolkit, and 
subsequent releases will include a library of components you can build on to
make a complete, professional production ready live sequencing environment,
with performance and accuracy suitable for studio or stage. 

In this first tutorial, all functions and definitions will be global. This
is convenient when prototyping as it makes it easy to redefine them on the fly -
you can even send new functions to s4m *while the sequencer is running*!
In a subsequent tutorial we'll put our code into an object-like function that acts
as a module and namespace so that we can instantiate more than one at a time.

Step 1 - Clocking options
--------------------------------------------

To begin, we need a function that runs on every step and triggers our
events. We'll call this **run-step**. 
We have several options for clocking our sequencer to call run-step. 

The simplest option is to just hook it up to a metronome, or any event triggering
code, and send the **run-step** message to s4m inlet 0. You could even use
this to trigger the events off an audio rate phaser if you wanted to, but in recent
versions of Max this isn't necessary anymore as the scheduler can run with sample
accurate timing (depending on your settings and audio buffers).  

The second simplest is to do the same kind of thing, but use Scheme to register
the clock call with either **clock-ms** or **clock-ticks**. This is technically 
the most efficient under the hood, but that's not going to matter unless you have
a large number of sequencers running very frequently. If we use **clock-ms**, our
listener function will fire every X ms, no matter what the global transport is doing.
With **clock-ticks**, the listener will only fire if the global transport is running.
For both the clock functions, there is only one master clock (each), so you would
need to call other sequencers from the same master clocking function. Another
reason you might want this approach is if you plan on having other functions running
off very small time quantiles - in this case you could register a single tick listener
and call run step every so often. A **clock-ticks** listener function should take one
argument, and is passed the current tick. A **clock-ms** listener should take no arguments
- it can always get the current time using a call to **time**.

Now for reasons of thread safety, s4m doesn't (currently) allow you to put scheduling calls
into code that is run on boot of the s4m object. So we will put the code to register
our clock listener into an **init** function, and we'll call that with a message
object that sends 'init' to s4m inlet 0:

.. code:: scm

  ; our global clock listener that will fire on every tick
  (define (tick-listener ticks)
    ; use modulo to determine if this is a 16th note boundary
    (if (= 0 (modulo ticks 120)) 
      (run-step)))

  ; register the above to run every single tick
  (define (init-clock)
    (post "(init) - registering clock listener")
    (clock-ticks 1 tick-listener))
  
If we don't plan on doing anything outside of step boundaries, the below will be
less cpu costly, as it only runs once a sixteenth:

.. code:: scm

  ; make an anonymous function that calls run-step
  ; and register it for every 120 ticks
  (define (init)
    (clock-ticks 120 (lambda (ticks) (run-step))))

On the other hand, maybe we want to be able to run multiple sequencers,
and have the flexibility to stop and start them independent of the transport
controls. In this case, we can use *self-scheduling*, which is also 
sometimes called *temporal recursion*. On every call to run-step, we put
the *next* call to run-step on the scheduler. This requires us to build
in a way to stop the self-scheduling, which we'll do with a variable
that we check on each call: 

.. code:: scm

  ; version 1-1, run for ever, posting to the console

  ; a global boolean variable to control whether we keep playing
  (define playing #f)

  (define (run-step)
    "function that executes on every step, and schedules the next step"
    (post "(run-step)")
    ; if the playing is #true, schedule next pass after 480 ticks 
    (if playing 
      (delay-t 480 run-step)))

We can now run our sequencer by setting **playing** to **#t**, and calling 
the run-step function. And we can stop it by changing the 
**playing** variable to **#f**. Note that it uses the current global
transport **tempo** to determine how long ticks should be, but the
transport does not have to be playing anymore for our sequencer to run.
For the rest of the tutorial, we'll use this clocking technique as its
the most flexible and easiest to prototype with. 

.. code:: scm
  
  (set! playing #t)
  (run-step)

  s4m>(run-step)
  s4m>(run-step)
  s4m>(run-step)
  ....

  (set! playing #f)
 
The example code for step-seq-1-1.scm and step-seq-1-1.maxpat has
both of these approaches for you to try out, but after this example,
we'll just be using self-scheduling so that we don't have to muck
about with the transport.


Step 2 - Transport controls
---------------------------

You might notice that when you set playing to #f, you get an extra event,
because the next pass of run-step is already scheduled. Let's clean that up a bit by putting 
in functions for stopping and starting, and having the stop function cancel
the scheduled next function with the **cancel-delay** function. This means
we need to save the callback handle returned by **delay-t**, so we'll add another
state variable. We'll make it possible to change the delay time by putting that in a variable too.
This means the length of a tick is still determined by our global transport tempo,
but the number of ticks per step is dynamic.

.. code:: scm

  ; version 1-2, run with play and stop functions

  ; new global to hold the callback handle from the most recent scheduled event
  (define cb-handle #f)
  ; duration of a step in ticks, used for the delat time
  (define ticks-per-step 480) 
  (define playing #f)

  (define (run-step)
    (post "(run-step)")
    (if playing 
      ; this time we save the callback handle
      (set! cb-handle (delay-t ticks-per-step run-step))))

  (define (play)
    "start the sequencer by setting playing and calling first step"
    (post "(play) - starting playback")
    (set! playing #t)
    (run-step))

  (define (stop)
    "stop the sequencer by clearing playing and cancelling the next event"
    (post "(stop) - stopping playback")
    (set! playing #f)
    (cancel-delay cb-handle))


Now we can start and stop the sequencer and change its time-base. If we want
to start and stop from Max GUI objects, all we need to do is make some message
objects with "play" and "stop", and send those into inlet 0 of the s4m object.
This will call the play and stop functions, as it gets interpreted
in s4m as **(play)** and **(stop)**.

.. code:: scm 
  (play)
  s4m> (play)

  s4m> (run-step) 
  s4m> (run-step) 
  s4m> (run-step) 
  ...
  
  (stop)
  s4m> (stop) - stopping playback
 

Step 3 - Musical data and output
---------------------------------

So far, so good! Now we need
some data to play-over, and we'd like our sequencer to loop over the data.
This means we need a container for our sequence data, and some kind of step counter. We're going
to use a **vector** to hold a series of pitches, and add variables to keep track
of where we are and how long our loop should be. We will use a vector rather than 
a list because we'll be doing random access into the data, for which a vector performs
much better. 

We'll also add a function for playing a note. It will output a list of **(note, velocity, duration)**,
which is the format expected by the **makenote** object. For now, our velocity 
and duration will be static values. 

Finally, we need to update the run-step function so that it will look up data for the current step,
play a note, and increment the step counter for the next pass before re-scheduling.

.. code:: scm

  ; version 1-3, loop over some data, sending output for midi notes

  (define cb-handle #f)
  (define playing #f)
  (define ticks-per-step 480)
  ; new vars for current step number and the loop length
  (define curr-step 0)
  (define loop-len 4)
  (define loop-top 0)

  ; data variable is a vector of midi notes
  (define seq-data (vector 60 64 67 64))

  ; new note playing function
  (define (play-note note-num)
    "play a note by outputing a note events data as a list"
    (post "(play-note) note-num:" note-num)
    ; output a list through outlet 0, with velocity 90, duration 250ms
    (out 0 (list note-num 90 250)))

  ; adding data lookup and playback
  (define (run-step)
    (post "(run-step)")
    ; (seq-data curr-step) returns data at index curr-step in vector
    (play-note (seq-data curr-step))
    
    ; increment or reset the step counter for the next pass
    (set! curr-step 
      ; if the step counter is less than loop-len - 1, increment
      ; otherwise, set it to zero
      (if (< curr-step (- loop-len 1)) 
        (+ 1 curr-step) 
        0)) 

    (if playing 
      (set! cb-handle (delay-t ticks-per-step run-step)))
  ); end run-step

  ; update the stop function to reset the counter
  (define (stop)
    "stop the sequencer by clearing playing and cancelling the next event"
    (post "(stop) - stopping playback")
    (set! playing #f)
    (cancel-delay cb-handle)
    ; reset step counter
    (set! curr-step 0))

  ; play function has not changed.

To get our output playing notes, we need to make a Max patcher with an unpack, makenote,
and some objects for midiout (or vst instrument).  See the tutorial 1 patcher folder for
the Max code. If you want to try a free vst-instrument, I 
recommend the Podolski from U-He, my favourite soft-synth 
developer!

.. TODO: put an image of the patcher in here

Step 4 - Multi-dimensional data, and writing to data
----------------------------------------------------

Our sequencer plays, but only sequences one element - the pitch. We'll change
our data now to be a multi-dimensional vector, where each data point in the top
dimension is another vector with **num-params** data points. This will let us
sequence some arbitrary number of parameters for each note event. For simplicy, 
we'll start with four: **gate**, **duration**, **pitch**, and **velocity**. By
making a gate param, we can turn on and off steps without erasing their content.
The new version of **play-note** uses these data params, only outputing a note
if the gate is on.

We will also add functions to write to the sequence. We'll have one for
writing only one parameter, one for writing all the params from a given step,
and one for updating a range of steps in the sequence data. For the purpose of the tutorial,
there will be no checking on the ranges, but you could add this easily if you want it.

There is one tricky bit of Scheme code worth mentioning. The for-each function
gets passed a function to call over a sequence of values, and the sequence of values.
If we pass in more than one sequence of values (as argument 3, for example), the
iterator function will get called with one value from each sequence as an argument, until the 
shorter sequence is exhausted. We're going to use that to enumerate through 
data. Also, you'll note our lambda functions passed to for-each are *closures*.
They use the values from their arguments, but also the arguments to the containing
function as static values. 

.. code:: scm

  ; change to 16th notes per step
  (define ticks-per-step 120)
  ; max number of steps in our sequence data
  (define num-steps 16)   
  ; number of note params: gate, dur, pitch, vel
  (define num-params 4)   

  ; make a 2D vector using the above sizes, initialized to 0
  ; make-vector arg 1 is a list of dimension sizes
  (define seq-data (make-vector (list num-steps num-params) 0))

  ; new play-note that uses all four params
  (define (play-note params)
    (post "(play-note)" params)
    (let ((gate (params 0))
          (dur  (params 1))
          (note (params 2))
          (vel  (params 3)))
      ; notes only go out if the gate is on
      (if gate
        ; output in the format expected by Max makenote object
        (out 0 (list note vel dur)))))

  ; new functions to write to the data
  (define (update-step-param step param value)
    "update one step and one paramater in the sequence data"
    (set! (seq-data step param) value))

  (define (update-step step pvals)
    "update all params for a step from a sequence of pvals"
    (for-each
      (lambda (param value)(update-step-param step param value))
      ; iterate through a sequence of integers and the pvals in parallel
      (range 0 (length pvals)) pvals))

  (define (update-seq starting-step pvals-list)
    "write multiple notes into the sequence data starting at starting-step"
    (for-each
      (lambda (step pvals) (update-step step pvals))
      (range starting-step (+ starting-step (length pvals-list)))
      pvals-list))  

We can test these data handling functions in the repl before using them 
in the sequencer. If we want to make gui elements in Max to update our sequence
data, we just need some message objects with the appropriate arguments. For example,
to update the gate param for to mute step 0, we want our object to send the following
message into the s4m object **update-step-param 0 0 0**. We do this easily in 
Max using the **$** arguments in message boxes. The step-seq-1-4.maxpat patcher 
shows various examples of this, with some sliders hooked up to write to velocity,
a number box changing the loop length, and three number boxes set up to write
any of the 4 params to any step.

We'll also add a function to seed our sequencer data with some musical input for testing:

.. code:: scm

  (define (seed-data)
    "seed our sequencer with 16 steps of data"
    (post "seeding test data")
    (update-seq 0 (list
      '(1 110 60 90) '(1 110 67 90) '(1 110 63 90) '(1 110 70 90)
      '(1 110 72 90) '(1 110 67 90) '(1 110 70 90) '(1 110 63 90)
      '(1 110 60 90) '(1 110 67 90) '(1 110 63 90) '(1 110 70 90)
      '(1 110 72 90) '(1 110 67 90) '(1 110 70 90) '(1 110 63 90)
    )))

If you load up the step-seq-1-4.maxpat file, you can now use the **seed** button 
to run this loop and hear real music! Don't forget that if you click the **reset**
button to reset the interpreter, you will need to reseed the data again, and also
to reclick scan if you want to be able to send messages from Scheme to GUI elements. 
In a larger system we would probably make an init function to do this for us.

*Question, should there be one in this??*


Step 5 - Loop controls
----------------------
One of things that makes step sequencers fun is changing the loop settings on the fly 
to create happy accidents, so let's add some looping controls. 
We'll add the ability to change the loop length as well as where in the sequence
the loop starts, and we'll add in some protection to ensure that instead of 
crashing if we try to read past the end of the sequence data, the read function
wraps around the sequence. And we'll add a playback rate control to allow
us to speed up or slow down the entire sequencer without changing any of the data.

To do this, we'll add a few new variables: **loop-len**, **loop-top**, and **play-speed**.
In the **run-step** function, we'll use the **curr-step** counter and add it to **loop-top** 
to get the index point of the seq-data. Then we will use the **modulo** function with
the length of the seq-data vector as an argument to wrap this index around 
safely. For example, if our current step is 6, and loop top is 3, but our sequence
data is only 8 points long, using modulo will wrap the 9 around to be 1.

The examples below only show the changed code, but the entire code for this version is included at
the end.

.. code:: scm

  ; default loop-top and loop-len in steps
  (define loop-len 8)         
  (define loop-top 0)
  ; rate, 2 means play twice as fast
  (define play-speed 1)

  ; new play-note that adjusts duration for the playback rate
  (define (play-note params)
    (post "(play-note)" params)
    (let ((gate (params 0))
          ; scale duration according to play-speed
          (dur  (* (/ 1.0 play-speed) (params 1)))
          (note (params 2))
          (vel  (params 3)))
      (if gate
        ; output in the format expected by Max makenote object
        (out 0 (list note vel dur)))))

  ; new run-step, with loop-top, loop-len, and play-speed
  (define (run-step)
    (post "(run-step)")
    
    ; calculate the index using loop-settings
    ; Note: need let* as we refer to index-unsafe for index
    (let* ((index-unsafe (+ loop-top curr-step))
           (step-index (modulo index-unsafe num-steps)))
      ; use our calculated index in the body of the let
      (play-note (seq-data step-index)))
    
    ; making a one-liner for space, but functionally the same
    (set! curr-step (if (< curr-step (- loop-len 1)) (+ 1 curr-step) 0)) 

    ; schedule next step, using play-speed multiplier
    (if playing 
      (set! cb-handle (delay-t (* (/ 1.0 play-speed) ticks-per-step) run-step)))

If you load the step-seq-1-5.maxpat, you'll see there are additional gui elements
for changing the play-speed, loop-top, and loop-len. 

This is a good time for a warning about errors. In this version, our run-step
function *is* the function that schedules the next step. While this is convenient,
it also means that if run-step crashes, playback stops. In this case, we need to be careful that we
don't pass a playback speed of 0, or we can get a divide-by-zero error, and the party
ends. We can protect against this with scheme, or in max. In this tutorial, I've
simply clamped the playback gui element to the range 0.25 to 2.0. In subsequent
tutorials we'll look at other clocking approaches that remove this fragility so
that if you create an error situation, you don't stop the sequencer. Another option
is to move the self-scheduling code to the top of run-step so that
playback will continue if run-step hits an error *after* that call. We won't do 
that in the tutorial code, as we want to catch errors in testing, but if we were
going to play this live, we'd likely want to. There are lots of options!

Step 6 - A simple display
-------------------------
The next thing we'll do for this sequencer is add a very simple display to demonstrate
how you can build a GUI for whatever you want to see while the sequencer runs. For this
demo, we'll update an LED object over each step so we visually see what step the sequencer
is on, and we'll add updating our sliders to show the right value when a parameter is
set some other way (i.e. from the repl or another element).
We're going to do this by giving 16 LED objects the scripting names 'led-0' to 'led-15',
and similarly, 'slider-0' to 'slider-15'. (Pro-tip, when you have to do something like
this 16 times, you might want to edit your max patch in a text editor!)
This means we need to have sent s4m the **scan** message on initialization so that these
objects are registered. Then we'll use the **send** function to sent the led and slider
objects their values.

.. code:: scm

  ; the last led index, in order to turn it off
  (define last-led 0)

  ; function to flash an led
  (define (flash-led step)
    (let ((last-led-id (symbol (string-append "led-" (number->string last-led))))
          (this-led-id (symbol (string-append "led-" (number->string step)))))
      ; turn last-led off and this-led on
      (send last-led-id 0)
      (send this-led-id 1)))
      
  ; add sending to the slider to update-step-params
  (define (update-step-param step param value)
    "update one step and one paramater in the sequence data"
    (set! (seq-data step param) value)
    ; update the slider if this is a velocity message
    (if (= param 3)
      (let ((slider-id (symbol (string-append "slider-" (number->string step)))))
        (send slider-id 'set value))))


Now when we seed our data, the sliders jump into place. And if we update a step
through the repl, or any other GUI element that writes to the velocity param,
the corresponding slider updates.

A word of warning though: while this pattern works fine when we don't have too many
gui elements, were we to make a very large gui (say a grid of many tracks by many steps by many bars),
it might require us to run with higher latency settings.
Updating a very large number of objects in one go puts a substantial load the scheduler, as we run a Scheme function
and put a message on the scheduler for every update. For a very large GUI, you 
may want to pass the GUI update handling to a seperate s4m object in the low priority thread,
which will be the topic of a subsequent tutorial. At this scale, it's not at all an issue.


Step 7 - MIDI input
-------------------
The next step for our sequencer will be to add midi input for saving sequence data.
As everyone's controllers are different, we'll keep this simple, but it should give you
enough to go off to make more complex midi input systems easily. This is an area
where doing it in Scheme really shines.

We'll have our input system do four things: users can select a step and set a duration
by using a number objects, and enter pitch and velocity by playing midi notes on channel 1. 

We'll start by adding two new variables: **edit-step** and **edit-dur**. These will
hold the currently selected step and duration. Playing a midi note will write the values
from the midi note number and velocity, along with the **edit-dur** to the step in **edit-step**.
This means that in Max nomenclature, the keyboard is *hot* - it triggers the work. 

We'll do this in Max by making two new number boxes, constraining their values reasonably
in the inspector, and hooking them up to messages boxes using the $ notation to call our 
Scheme functions for selecting a step and dur, which we'll call **select-step** and **select-dur**. 

.. code:: scm

  ; new var for selected step and current dur
  (define edit-step 0)
  (define edit-dur 0)

  ; new edit input functions
  (define (select-step step)
    (post "editing step:" step)
    ; the GUI says 1-16 to match musician nomenaclature
    ; but the computer representation wants index 0+
    (set! edit-step (- step 1)))

  (define (select-dur dur)
    (post "duration selected:" dur)
    (set! edit-dur dur))

Next we'll add a **midi-note** function. This will get called from Max with a message that we
want to look like **midi-note {note} {vel} {chan}**. We'll do this by connecting a Max **notein**
to a  **join**, then to a **prepend midi-note** object, and finally sending to **s4m** inlet 0.
We can test this with a dummy midi-note function that outputs to the console.

Once that's working, all that's left is to make the midi-note function write to our sequence
data:

.. code:: scm

  (define (midi-note note-num vel channel)
    "handle midi-note input for update seq data"
    ; ignore midi-off messages (vel = 0) or not channel 1
    (if (and (= 1 channel) (> vel 0))
      (begin
        (post "midi-note" note-num vel)
        (update-step edit-step (list 1 edit-dur note-num vel)))))

And that's all there is to it! We can now edit our sequence in real time from the keyboard,
and you'll see the velocity sliders updating every time we change a step as well. The same
pattern can be extended indefinitely for more complex midi input. In a subsequent tutorial
we'll tackle real time midi input where we can play into the sequence, storing the duration
we play on the keyboard, but this involves significantly more complex code.


Step 8 - Multiple Tracks
------------------------

We've saved multiple tracks until now as it's a big one and adds quite a bit of code. 
We have a couple of options : we can make one sequencer that plays multiple tracks, or we can make
multiple sequencers. In tutorial series 2, we'll look at the second option, which requires
us to refactor our code so that we don't have all our variables in the global namespace. 
In this version, we'll put multiple tracks into the same sequencer.

We want to be able to change loop settings separately for each track, so this means:

* One sequencer with one playback speed handles all tracks, so play-speed is global
* The sequence data gets a third dimension for **track**
* Track specific settings need to become vectors with one point per track
* We need to add track selection to all our reading and writing functions.
* We'll add track mutes to each track.
* We need to loop through all tracks in **run-step**

To keep this manageable, we will not tackle multi-track display. I leave it as an exercise
for the reader to decide how you might want to handle that, and advanced options will
be covered in subsequent toolkit components. So for now, we're just going to delete
the sliders and leds. We'll work from the top to the bottom of the code, updating things
to be multiple tracks.

First up, variables. We will add a **num-tracks** var, and we'll change the track
settings to vectors with **num-tracks** points. We'll put in the new **track-on** vector
for track muting. Finally, we'll add a new var, **loop-sync**, determining
when track loops resync, which will be explained later. 

.. code:: scm

  ; globals that can stay the same
  (define cb-handle #f)
  (define playing #f)
  (define ticks-per-step 120)
  (define play-speed 1)
  
  ; add a track selector for editing
  (define edit-step   0)
  (define edit-dur    0)
  (define edit-track  0)
  
  ; add num-tracks
  (define num-tracks 4)
  (define num-params 4)   
  (define num-steps 16)   
  
  ; these are now vectors, num-tracks in size
  (define loop-len  (make-vector num-tracks 16))
  (define loop-top  (make-vector num-tracks 0))
  ; add track mute, vector of 1 or 0
  (define track-on  (make-vector num-tracks 1))
  
  ; curr-step is not a vector, it's the master step  
  (define curr-step 0)
  ; number of steps after which track loops resync
  (define loop-sync 16)
  
  ; seq-data gets a third dimension, which will go first
  (define seq-data (make-vector (list num-tracks num-steps num-params) 0))
  ; now to get a vector of param values, we can do
  ; (seq-data track step)
  
Updating midi input is simple, we add a selector for track, and we use this
as an argument to update-step, which we implement shortly:

.. code:: scm

  ; add a select track edit function
  (define (select-track track)
    (post "editing track" track)
    (set! edit-track (- track 1)))
  
  (define (select-step step)
    (post "editing step" step)
    (set! edit-step (- step 1)))
  
  (define (select-dur dur)
    (post "duration selected:" dur)
    (set! edit-dur dur))

  ; add new edit-track var in call to update-step 
  (define (midi-note note-num vel channel)
    "handle midi-note input for update seq data"
    ; ignore midi-off messages (vel = 0) or not channel 1
    (if (and (= 1 channel) (> vel 0))
      (begin
        (post "midi-note" note-num vel)
        (update-step edit-track edit-step (list 1 edit-dur note-num vel)))))


Time for the data editing functions. We'll delete flash-led and the code for calling it
and for updating the velocity sliders. We need to add track parameters to our three data 
entry functions. Thanks to the handy syntax of s7's muli-dimensional vectors, this
is dead easy:

.. code:: scm

  ; adding track variables to these
  (define (update-step-param track step param value)
    "update one step and one paramater in the sequence data"
    (set! (seq-data track step param) value))
  
  (define (update-step track step pvals)
    "update all params for a step from a sequence of pvals"
    (for-each
      (lambda (param value)(update-step-param track step param value))
      ; iterate through a sequence of integers and the pvals in parallel
      (range 0 (length pvals)) pvals))
  
  (define (update-seq track starting-step pvals-list)
    "write multiple notes into the sequence data starting at starting-step"
    (for-each
      (lambda (step pvals) (update-step track step pvals))
      (range starting-step (+ starting-step (length pvals-list)))
      pvals-list))  


Next we need to decide how we'll handle output. We could do one of two things:
add a track number to the list we output to Max and deal it there, or give
s4m an outlet for each track. We'll go with an outlet for each track,
and we'll add a track argument.

.. code:: scm

  ; add a track argument and map it to outlet
  (define (play-note track params)
    ;(post "(play-note)" params)
    (let ((gate (params 0))
          ; scale duration according to play-speed
          (dur  (* (/ 1.0 play-speed) (params 1)))
          (note (params 2))
          (vel  (params 3)))
      ; notes only go out if the gate is on
      (if gate
        (out track (list note vel dur)))))


So far, this has pretty simple. Now we have the tricky business - **run-step**.
We need to discuss how track looping is going to work first.

Each of our tracks has their own loop-top and loop-len, requiring us to make some
decisions about how these free-wheel or sync. In this version we're going
to use a resyncing strategy that I've personally found is a good balance of enabling
variety vs the ability to reset to "normal" when you need to. 
If you want totally freewheeling track loops, it's 
probably better to use the separate-sequencer-per-track design that will be covered
in the second tutorial series. 

The concept here is that there is a master loop-length and a master curr-step, 
stored in our **loop-sync** and **curr-step** vars. In real world use, these
might be something like 8 or 16 bars of steps. A track loop-lenh *can't be longer
than this value.* 
Individual track index points are calculated using modulo arithmetic against this
master loop. This means that at any time, we can put the loop length for a track
back to a regular size (say 1, 2, 4, or 8 bars), and the step for that track will
jump immediately to the (new) right place. If our loop-len is irregular, when it
gets to the boundary for the loop-sync point, it will jump back to the zero index 
at that point. 

To illustrate: if **loop-sync** is 8, and **loop-len** for a track is 3, its index points
for 16 steps are going to go:

**0   1   2   0   1   2   0   1   0   1   2   0   1   2   0   1**

Calculating this is straightforward. Our curr-step counter now counts up to
loop-sync, making loop-sync act as length for a master loop. And our individual track index
is the curr-step modulo the loop-sync. This automatically makes every track loop resync
when the curr-step counter rolls-over to 0. Then we apply the loop-top shift to that
result.

To make this a bit easier to read, we'll put this logic into a helper function, **get-track-step-data**. 
In **run-step** we need to loop over each track, and we'll check the track mute there:

.. code:: scm

  ; new run-step helper that works with track loop points 
  (define (get-track-step-data track master-step)
    "return a vector of param vals for a given track and master step"
    ; get the step for this track calculating from track's loop-top and loop-len
    ; note that master-step already rolls over automatically at loop-sync steps
    (let* ((t-loop-len (loop-len track))
           (t-loop-top (loop-top track))
           (actual-step (+ t-loop-top (modulo master-step t-loop-len))))
      (seq-data track actual-step)))

  ; update run-step for separate track looping
  (define (run-step)
    ;(post "(run-step)")
    ; for each track, get step data and pass to output function 
    (for-each 
      (lambda (track-num) 
        (let ((step-params (get-track-step-data track-num curr-step)))
          ; only ouput it track not muted
          (if (= 1 (track-on track-num))
            (play-note track-num step-params))))
      ; what we iterate over
      (range 0 num-tracks))
    
    ; change curr-step to use loop-sync as its roll-over point
    (set! curr-step (if (< curr-step (- loop-sync 1)) (+ 1 curr-step) 0)) 
    ; schedule next step, using play-speed multiplier
    (if playing 
      (set! cb-handle (delay-t (* (/ 1.0 play-speed) ticks-per-step) run-step)))
  ); end run-step
 
The one remaining piece for multi-track playback is how we will update the 
track specific  controls. By virtue of the how the loop calculation works, 
we can't have track loop lengths be longer than the master loop sync control.
However, the modulo math means that we don't really need to protect against this, we'll
just never get there - the step counter will roll over at the loop-sync point.
For illustration purposes, we'll put some error handling in. 

In the Max patch, we'll add loop controls for 4 tracks, with boxes for
loop-len and loop-top, and a toggle for track muting.
 
.. code:: scm

  (define (set-loop-len track steps)
    (post "set-loop-len" track steps)
    (if (> steps loop-sync) 
      (post "ERROR: loop length cannot exceed loop-sync, at:" loop-sync)
      ; else set the value
      (set! (loop-len track) steps)))

  (define (set-loop-top track steps)
    (post "set-loop-top" track steps)
    (set! (loop-top track) steps))

  (define (set-track-on track enabled)
    (post "set-track-on" track enabled)
    (set! (track-on track) enabled)) 

In the sample Max patch, there are number boxes for editing, and **loadmess**
objects to start them off with reasonable values. In a more full featured version,
we'd want to make an **init** function that sends messages to our GUI objects
to set them with the correct starting values so that these are always set *from
the Scheme data*. As the changes in this version are already quite complex, we'll
look at that approach in a subsequent tutorial when we do saving and loading of data.


Wrapping up and next steps
----------------------------
Our sequencer is fully functional, but there are a few areas we might want to improve
and will cover in subsequent tutorials.  All our code is global. This is useful when 
prototyping, because we can redefine
any function or variable, even while the sequencer is playing. However, this prevents
us from making more than one instance of our sequencer. If we want to have multiple
sequencers, perhaps for exploring poly-rhythmic music, we need a way to contain
all our code. This will be covered in Tutorial 2.

Some of the other topics for subsequent tutorials include:

* Adding and sequencing Scheme functions for algorithmic and stochastic processes
* Orchestrating multiple sequencers with a score sequencer
* Hooking up midi controllers to update our sequence data from hardware
* Saving and loading sets to disk
* Building sophisticated displays to see our sequence data on screen

I hope you enjoy building sequencers with the toolkit, and please get in touch
with feedback, requests, or issues!


Appendix: Performance, timing accuracy,  and Max settings 
-------------------------------------------------------------------

NOTE: I will probably move this page to an appendix, thoughts welcome.

We now have a multi-track step sequencer that we can update in real-time from 
live-code or Max objects. It's time for a look at timing, latency, performance,
and Max settings. Fist off, let me say that this has been tested
exhaustively, and running live sequencers with rock solid timing in Scheme for Max 
absolutely works. If you want to use the CPU use for it, you can get sample accurate timing. 
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


