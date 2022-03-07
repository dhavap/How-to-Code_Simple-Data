
;; less-than-five-starter.rkt

; 
; PROBLEM:
; 
; DESIGN function that consumes a string and determines whether its length is
; less than 5.  Follow the HtDF recipe and leave behind commented out versions 
; of the stub and template.
; 


; String -> Boolean
; Checks if string length is < 5
(check-expect (lengthUnderFive "hello") false)
(check-expect (lengthUnderFive "mice") true)
(check-expect (lengthUnderFive "elephant") false)

(define (lengthUnderFive str)
  (< (string-length str) 5))
