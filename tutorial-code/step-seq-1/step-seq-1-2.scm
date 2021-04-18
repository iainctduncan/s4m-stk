(post "step-seq-1-2.scm")

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


