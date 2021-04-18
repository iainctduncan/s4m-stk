(post "step-seq-1-8.scm")
; version 1-8, multi-track output

; settings that will be track specific now need to be vectors

; globals that can stay the same
(define cb-handle #f)
(define playing #f)
(define ticks-per-step 120)
(define play-speed 1)

; add a track selector for editing
(define edit-step   0)
(define edit-dur    120)
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

(define (midi-note note-num vel channel)
  "handle midi-note input for update seq data"
  ; ignore midi-off messages (vel = 0) or not channel 1
  (if (and (= 1 channel) (> vel 0))
    (begin
      (post "midi-note, updating" edit-track edit-step)
      (post " - data 1" edit-dur note-num vel)
      (update-step edit-track edit-step (list 1 edit-dur note-num vel)))))

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

; multi-track track control setters
(define (set-loop-len track steps)
  "set the loop length for a track"
  (post "set-loop-len" track steps)
  (if (> steps loop-sync) 
    (post "ERROR: loop length cannot exceed loop-sync, at:" loop-sync)
    ; else set the value
    (set! (loop-len track) steps)))

(define (set-loop-top track steps)
  "set the loop top for a track"
  (post "set-loop-top" track steps)
  (set! (loop-top track) steps))

(define (set-track-on track enabled)
  (post "set-track-on" track enabled)
  (set! (track-on track) enabled)) 

; add track output - track determines outlet
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


; new run-step helper that works with track loop points 
(define (get-track-step-data track master-step)
  "return a vector of param vals for a given track and master step"
  ; get the step for this track calculating from track's loop-top and loop-len
  ; note that master-step already rolls over automatically at loop-sync steps
  (let* ((t-loop-len (loop-len track))
         (t-loop-top (loop-top track))
         (actual-step-unsafe (+ t-loop-top (modulo master-step t-loop-len)))
         (actual-step (modulo actual-step-unsafe num-steps)))
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

; multi-track version of seeding data
(define (seed-data)
  "seed our sequencer with 16 steps of data on two tracks"
  (post "seeding test data")
  (update-seq 0 0 (list
      '(1 320 48 90) '(0 0 0 0)   '(0 0 0 0)      '(1 320 48 70)
      '(0 0 0 0)     '(0 0 0 0)   '(1 110 46 60)  '(0 0 0 0)
      '(1 320 48 90) '(0 0 0 0)   '(0 0 0 0)      '(1 320 48 70)
      '(0 0 0 0)     '(0 0 0 0)   '(1 130 46 80)  '(1 120 43 90)
  ))
  (update-seq 1 0 (list
      '(1 110 60 90) '(1 110 67 70) '(1 110 63 50) '(1 110 70 90)
      '(1 110 72 70) '(1 110 67 50) '(1 110 70 90) '(1 110 63 50)
      '(1 110 67 90) '(1 110 75 70) '(1 110 72 50) '(1 110 70 90)
      '(1 110 72 70) '(1 110 67 50) '(1 110 70 90) '(1 110 58 50)
  ))
  (update-seq 2 0 (list
      '(0 0 0 0) '(0 0 0 0) '(1 120 84 90)  '(1 120 84 60)
      '(0 0 0 0) '(0 0 0 0) '(1 120 82 90)  '(1 120 82 60)
      '(0 0 0 0) '(0 0 0 0) '(1 120 84 90)  '(1 120 84 60)
      '(0 0 0 0) '(0 0 0 0) '(1 120 82 90)  '(1 120 82 60)
  ))

)


