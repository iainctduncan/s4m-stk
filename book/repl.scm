(modulo 7 5)

(set! playing #f)
(set! playing #t)
(run-step)

(symbol (string-append "led-" (number->string 1)))

(define last-led 0)
(flash-led 1)

(update-step-param 0 3 20)
(send 'slider-0 'set 20)

LEFT OFF: fixing up the v5 and v6 issue

- after that, can make a video!

