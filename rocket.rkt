;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; You are designing a program to track a rocket's journey as it descends 
; 100 kilometers to Earth. You are only interested in the descent from 
; 100 kilometers to touchdown. Once the rocket has landed it is done.
; 
; Design a data definition to represent the rocket's remaining descent. 
; Call it RocketDescent.
; 


;; Data definitions:
;; RocketDescent is one of:
;;  - beforeDescent
;;  - descent
;;  - landed
;; interp.
;; beforeDescent  means the rocket is more than 100km from Earth
;; descent        means the rocket is more than 0km but less than 100km from Earth
;; landed         means the rocke has landed

;; =================
;; Functions:

; 
; PROBLEM B:
; 
; Design a function that will output the rocket's remaining descent distance 
; in a short string that can be broadcast on Twitter. 
; When the descent is over, the message should be "The rocket has landed!".
; Call your function rocket-descent-to-msg.
; 


(define beforeDescent 101)
(define descent 50)
(define landed 0)
#;
(define (rocket-descent-to-msg distance)
  (cond [(> distance 100) (...)]
        [(equal? distance 0) (...)]
        [else (...)]))

;; Functions:

;; rocket-descent-to-msg -> Bool
;; check if building should be torn down
(check-expect (rocket-descent-to-msg 101) "The rocket is too far away!")
(check-expect (rocket-descent-to-msg 50) "The rocket is descending: 50km")
(check-expect (rocket-descent-to-msg 0) "The rocket has landed!")

(define (rocket-descent-to-msg distance)
  (cond [(> distance 100) "The rocket is too far away!"]
        [(equal? distance 0) "The rocket has landed!"]
        [else (string-append "The rocket is descending: " (string-append (number->string distance) "km"))]))
