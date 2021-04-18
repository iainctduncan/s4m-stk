Introduction 
======================================================================

In this tutorial series, we will build a variety of sequencers and sequencing tools
in Scheme for Max (s4m). Scheme is, in my humble but biased opinion, a wonderful
language for building algorithmic, live-codeable, step sequencers, that we can
use for composition, improvisation, and live-performance. 

Most step sequencers have an engine that is essentially
locked at playback time. They play back numerical data from the grid, the data goes
out, and you do with it whatever you will only once it's left the sequencer. 
In this tutorial, our entire step-sequencer will be implemented in Scheme, so we
can add algorithms of arbitrary complexity to any part of the process, making
it easy to parse midi input anyway we want for building control scripts, or
change output to drive anything we want from Max. Our sequencer just triggers
Scheme functions, so we can sequence anything we can do in Scheme or Max!
 
Even more exicting is that our sequencer is **live-codable**. 
Because the sequencer engine runs entirely in Scheme
for Max, we can redefine parts of the sequencer *while it is playing*. Not just the
data, but the actual sequencer engine and any functions it uses for input, output, 
or internal data mangling. This is very productive for experimenting
with new alogorithms while composing, especially for things like probablity related
functions. 

Approach
--------

We're going to start by building a simple step sequencer and gradually
build up to a multi-track step sequencer with graphic display widgets,
and both GUI and midi input.  We'll build up the sequencer incrementally, 
with runable code at every step. Each version of the sequencer (steps 1 to 8 
at the moment) has an accompanying scm file and Max patch in the tutorials
directory of the repository. 

Output from the engine will be Music-N/csound style "score" messages, 
and we'll use a simple Max midi output
patch to turn those into midi messages. By having the sequencer work with this generic
format, it would be trivial to hook them it to other sound generators, whether
internal in Max, or external with something like SuperCollider over OSC or csound over
stdout.

The tutorial will start simple, but will ultimately use some fairly substantial 
Scheme idioms. However, all the Scheme language features used in the tutorial are
covered in the free online e-book, 
`Learn Scheme For Max <https://iainctduncan.github.io/learn-scheme-for-max/introduction.html>`_.
This tutorial can thus serve as a project to accompany the book, and if you use both concurrently, it 
should be doable by someone new to Scheme.



Prerequisites
-------------
You don't need to know Scheme yet, but if you don't, you'll want to have
the aforementioned e-book open while you work. We won't discuss the code details
very much beyond referencing the book or explaining anything particularly tricky.

You do need to have Scheme For Max successfully installed and running. The
YouTube tutorials on installation will help. 

I recommended that you figure out how to integrate a text editor
with Scheme for Max so that you can send code out over OSC into s4m, though
this is not necessary. You might want to start out and see if this is something
you will pursue further and then get going on it. This will, however,
make the development process and the experimentation with the running sequencer
much more pleasant so it's well worth the time if you plan to use s4m to
any large degree. The video tutorial on editor integration shows how to do it
with a Vim family editor, and the technique used in there should be adaptable
to others easily enough. (Text goes out to tiny Python program that sends
it out over OSC into Max).

Code and Max Patchers
---------------------
The Scheme code and accompanying patcher code is available in the 
**tutorial-code** directory of the 
`Scheme For Max Sequencing Toolkit <https://github.com/iainctduncan/s4m-stk>`_ 
repository on GitHub.


Errata and Suggestions
----------------------
If you find errors or think a section could be clearer, please feel free to submit
issues in the issue tracker for the Learn Scheme For Max repository on GitHub.

OK, let's build some sequencers!
