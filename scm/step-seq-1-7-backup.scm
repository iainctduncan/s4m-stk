(post "step-seq-1-7.scm")
; version 1-7, adds midi input for pitches

; new var for selected step and current dur
(define edit-step 0)
(define edit-dur 0)

(define last-led 0)
(define cb-handle #f)
(define playing #f)
(define ticks-per-step 120)
(define curr-step 0)
(define loop-len 16)
(define loop-top 0)
(define play-speed 1)

(define num-steps 16)   
(define num-params 4)   
(define seq-data (make-vector (list num-steps num-params) 0))


; new edit input functions
(define (select-step step)
  (post "editing step:" step)
  ; the GUI says 1-16 to match musician nomenaclature
  ; but the computer representation wants index 0+
  (set! edit-step (- step 1)))

(define (select-dur dur)
  (post "duration selected:" dur)
  (set! edit-dur dur))

(define (midi-note note-num vel channel)
  ; ignore midi-off messages (vel = 0) or channel != 1
  (if (and (= 1 channel) (> vel 0))
    (begin
      (post "midi-note" note-num vel)
      (update-step edit-step (list 1 120 note-num vel)))))


; function to flash the led for the current step
(define (flash-led step)
  ; make the symbol names and bind as let variables
  (let ((last-led-id (symbol (string-append "led-" (number->string last-led))))
        (this-led-id (symbol (string-append "led-" (number->string step)))))
    ; turn last-led off and this-led on, and update last-led
    (send last-led-id 0)
    (send this-led-id 1)
    (set! last-led step)))

; add sending to the slider to update-step-params
(define (update-step-param step param value)
  "update one step and one paramater in the sequence data"
  (set! (seq-data step param) value)
  ; update the slider if this is a velocity message
  (if (= param 3)
    (let ((slider-id (symbol (string-append "slider-" (number->string step)))))
      (send slider-id 'set value))))

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
        ; scale duration according to play-speed
        (dur  (* (/ 1.0 play-speed) (params 1)))
        (note (params 2))
        (vel  (params 3)))
    ; notes only go out if the gate is on
    (if gate
      (out 0 (list note vel dur)))))

; add flash-led to run-step
(define (run-step)
  ;(post "(run-step)")
  (play-note (seq-data curr-step))

  ; calculate the index using loop-settings
  ; Note: need let* as we refer to index-unsafe for index
  (let* ((index-unsafe (+ loop-top curr-step))
         (step-index (modulo index-unsafe num-steps)))
    ; use our calculated index in the body of the let
    (play-note (seq-data step-index))
    ; this is also the step we want to flash!
    (flash-led step-index))

  ; increment or reset the step counter for the next pass
  (set! curr-step (if (< curr-step (- loop-len 1)) (+ 1 curr-step) 0)) 

  ; schedule next step, using play-speed multiplier
  (if playing 
    (set! cb-handle (delay-t (* (/ 1.0 play-speed) ticks-per-step) run-step)))
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


