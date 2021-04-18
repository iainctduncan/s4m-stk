Scheme For Max Sequencing Toolkit Tutorials
======================================================================

In this tutorial series, we will build a variety of sequencers and sequencing tools
in Scheme for Max (s4m). Scheme is, in my humble but biased opinion, a wonderful
language for building algorithmic, live-codeable, step sequencers, that we can
use for composition, improvisation, and live-performance. 

First, it's a **step sequencer**. This means events go into a grid of some sort
(though as we will see, we can make this grid dynamic), and events
follow one another linearly with their start-times determined by their slot on the
grid and the playback rate of grid events. This differs from a "score sequencer",
where events can be at any time point, and multiple events can live at one time point.
(We'll build one of those later too, using it to orchestrate the step sequencers!)

Second, it's **algorithmic**. Most step sequencers have an engine that is essentially
locked at playback time. They play back numerical data from the grid, the data goes
out, and you do with it whatever you will only once it's left the sequencer. 
In this tutorial, our entire step-sequencer will be implemented in Scheme, so we
can add algorithms of arbitrarty complexity to any part of the process.
 
Finally, it's **live-codable**. Because the sequencer engine runs entirely in Scheme
for Max, we can redefine parts of the sequencer *while it is playing*. Not just the
data, but the actual sequencer engine and any functions it uses for input, output, 
or internal data mangling. This is very productive for experimenting
with new alogorithms while composing, especially for things like probablity related
functions. 

Approach
--------

We're going to start by building a simple step sequencer in which the engine
schedules itself for the next event. This is not the only way to clock a 
sequencer in Scheme for Max, and we'll look at other options as part of the tutorial,
but its a good choice for building chance-based pieces, because we don't have to
worry about exactly when we send in a change. On each step, the sequencer will
schedule its next step, and thus timing (and any other changes) are automatically
quantized to a step boundary, though a step boundaries time quantile can change
as we go. I use this extensively in 'Stochastic Etude 1'.

We will build up the sequencer incrementally, with runable code examples. Output from the 
engine will be Music-N/csound style "score" messages, and we'll use a simple Max midi output
patch to turn those into midi messages. By having the sequencer work with this generic
format, it would be trivial to hook them it to other sound generators, whether
internal in Max, or external with something like SuperCollider over OSC or csound over
stdout.

The tutorial will start simple, but will ultimately use some fairly substantial 
Scheme idioms. However, all the Scheme language features used in the tutorial are
covered in the free online e-book, **Learn Scheme For Max**. This tutorial can thus
serve as a project to accompany the book, and if you use both concurrently, it 
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
The Scheme code and accompanying patcher code is available in the tutorials
directory of the **Scheme For Max Sequencing Toolkit** repository on GitHub.

Errata and Suggestions
----------------------
If you find errors or think a section could be clearer, please feel free to submit
issues in the issue tracker for the Learn Scheme For Max repository on GitHub.

OK, let's build some sequencers!
