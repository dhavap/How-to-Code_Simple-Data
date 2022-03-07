(require 2htdp/image)

;; boxify-starter.rkt

; 
; PROBLEM:
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes an image, 
; and appears to put a box around it. Note that you can do this by creating an "outline" 
; rectangle that is bigger than the image, and then using overlay to put it on top of the image. 
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 

(check-expect (Boxify (ellipse 60 30 "solid" "red")) (overlay (ellipse 60 30 "solid" "red") (rectangle 60 30 "outline" "black")))

; Image -> Image
; Puts box around image
(define (Boxify img)
  (overlay img
   (rectangle (image-width img) (image-height img) "outline" "black")))
