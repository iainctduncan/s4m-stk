(post "step-seq-1.scm")

; first tutorial file for our step sequencer

; settings a user might change directly
(define ticks-per-step 480)
(define num-steps (* 4 8))
(define num-params 4)
(define loop-len 4)

; internal state variables that should be accessed through functions only
(define seq-data (make-vector (list num-steps num-params) 0))
(define curr-step 0)
(define playing #f)
(define cb-handle #f)

;********************************************************************************
; engine functions
(define (play-note params)
  (post "(play-note)" params)
  (let ((gate (params 0))
        (dur  (params 1))
        (note (params 2))
        (vel  (params 3)))
    (if gate
      ; output in the format expected by Max makenote object
      (out 0 (list note vel dur)))))

(define (run-step)
  (post "run-step, step:" curr-step)
  (play-note (seq-data curr-step))
  ; increment or reset the step counter for the next pass
  (set! curr-step (if (< curr-step (- loop-len 1)) (+ 1 curr-step) 0)) 
  ; if the sequencer is on, schedule next step and save handle
  (if playing
    (set! cb-handle (delay-t ticks-per-step run-step))))

(define (play)
  (post "(play)")
  (set! playing #t)
  (run-step))

(define (stop)
  (post "(stop)")
  (cancel-delay cb-handle)
  (set! playing #f)
  (set! curr-step 0))

;********************************************************************************
; sequence editing functions
(define (value? val)
  "return true if value is not false or the symbol _"
  (and val (not (eq? val '_))))

(define (update-step step pvals)
  "update a single step from a sequence of note param values"
  (post "(update-step) step:" step "pvals:" pvals)
  ; loop through all pvals
  (do ((i 0 (inc i))) ((= i (length pvals)))
    ; if we got a real value, set the sequence data
    (if (value? (pvals i))
      (set! (seq-data step i) (pvals i))))
)

(define (update-seq index data)
  "update the sequence from a sequence of note-data sequences"
  ; iterate through enumeration of steps and the data sequence
  (for-each 
    update-step
    (range index (+ index (length data)))   ; list of values from index to index + length of data
    data)
)

;********************************************************************************
; testing functions
(define (seed)
  "seed our sequencer with an arpeggiator"
  (update-seq 0 (list
    '(1 440 60 90)
    '(1 440 64 90)
    '(1 440 67 90)
    '(1 440 64 90)
  ))
)

  

    
 
    
