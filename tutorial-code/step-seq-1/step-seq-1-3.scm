(post "step-seq-1-3.scm")
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


(define (play)
  "start the sequencer by setting playing and calling first step"
  (post "(play) - starting playback")
  (set! playing #t)
  (run-step))

(define (stop)
  "stop the sequencer by clearing playing and cancelling the next event"
  (post "(stop) - stopping playback")
  (set! playing #f)
  (cancel-delay cb-handle)
  ; reset step counter
  (set! curr-step 0))

