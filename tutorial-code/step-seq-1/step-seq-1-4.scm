(post "step-seq-1-4.scm")
; version 1-4, adds 4 paramaters per note and data updating

(define cb-handle #f)
(define playing #f)
(define ticks-per-step 120)
(define curr-step 0)
(define loop-len 16)
(define loop-top 0)

; max number of steps in our sequence data
(define num-steps 16)   
; number of note params: gate, dur, pitch, vel
(define num-params 4)   
; make a 2D vector using the above sizes, initialized to 0
; make-vector arg 1 is a list of dimension sizes
(define seq-data (make-vector (list num-steps num-params) 0))


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

; new play-note that uses all four params
(define (play-note params)
  ;(post "(play-note)" params)
  (let ((gate (params 0))
        (dur  (params 1))
        (note (params 2))
        (vel  (params 3)))
    ; notes only go out if the gate is on
    (if gate
      ; output in the format expected by Max makenote object
      (out 0 (list note vel dur)))))

; adding data lookup and playback
(define (run-step)
  ;(post "(run-step)")
  ; (seq-data curr-step) returns data at index curr-step in vector
  ; this will now be a vector num-params in size, passed to play-note
  (play-note (seq-data curr-step))
  
  ; increment or reset the step counter for the next pass
  (set! curr-step (if (< curr-step (- loop-len 1)) (+ 1 curr-step) 0)) 

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

; function to seed data
(define (seed-data)
  "seed our sequencer with 16 steps of data"
  (post "seeding test data")
  (update-seq 0 (list
      '(1 110 60 90) '(1 110 67 70) '(1 110 63 50) '(1 110 70 90)
      '(1 110 72 70) '(1 110 67 50) '(1 110 70 90) '(1 110 63 50)
      '(1 110 67 90) '(1 110 75 70) '(1 110 72 50) '(1 110 70 90)
      '(1 110 72 70) '(1 110 67 50) '(1 110 70 90) '(1 110 58 50)
  )))


