
;; tall-starter.rkt

(require 2htdp/image)

; 
; PROBLEM:
; 
; DESIGN a function that consumes an image and determines whether the 
; image is tall.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 


; image -> Boolean
; Takes an image and checks if it is tall, i.e. a portrait rather than a landscape image
(check-expect (isTall .) false)  ; image placed at '.'

(define (isTall img)
  (if (> (image-height img) (image-width img))
      true
      false))
