
;; function-writing-starter.rkt

; 
; PROBLEM:
; 
; Write a function that consumes two numbers and produces the larger of the two. 
; 

; Solution
(define (LargerNum n m)
  (if (> n m)
      n
      m))
