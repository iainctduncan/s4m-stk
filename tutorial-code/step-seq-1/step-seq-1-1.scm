(post "step-seq-1-1.scm")

; version 1-1, run for ever, posting to the console

; a global boolean variable to control whether we keep playing
(define playing #f)

(define (run-step)
  "function that executes on every step, and schedules the next step"
  (post "(run-step)")
  ; if the playing is #true, schedule next pass after 480 ticks 
  (if playing 
    (delay-t 480 run-step)))

; our global clock listener that will fire on every tick
(define (tick-listener ticks)
  ; use modulo to determine if this is a 16th note boundary
  (if (= 0 (modulo ticks 480)) 
    (run-step)))

; register the above to run every single tick
(define (init-clock)
  (post "(init) - registering clock listener")
  (clock-ticks 1 tick-listener))
  
