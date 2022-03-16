;; HtDD Design Quiz

;; Age is Natural
;; interp. the age of a person in years
(define A0 18)
(define A1 25)

#;
(define (fn-for-age a)
  (... a))

;; Template rules used:
;; - atomic non-distinct: Natural


; Problem 1:
; 
; Consider the above data definition for the age of a person.
; 
; Design a function called teenager? that determines whether a person
; of a particular age is a teenager (i.e., between the ages of 13 and 19).


(check-expect (teenager? 13) #t)
(check-expect (teenager? 1) #f)
(check-expect (teenager? 15) #t)
(check-expect (teenager? 19) #t)
(check-expect (teenager? 150) #f)

;; Number -> Bool
(define (teenager? age)
  (and (>= age 13)
       (<= age 19)))




; Problem 2:
; 
; Design a data definition called MonthAge to represent a person's age
; in months.

;; MonthAge is Natural
;; interp. the age of a person in months
(define Age1 1)
(define Age2 3)

#;
(define (fn-for-month-age a)
  (... a))

;; Template rules used:
;; - atomic non-distinct: Natural


; Problem 3:
; 
; Design a function called months-old that takes a person's age in years 
; and yields that person's age in months.
; 

(check-expect (MonthAge 2) 24)
(check-expect (MonthAge 5) 60)

;; Number -> Number
(define (MonthAge years)
  (* years 12))



; Problem 4:
; 
; Consider a video game where you need to represent the health of your
; character. The only thing that matters about their health is:
; 
;   - if they are dead (which is shockingly poor health)
;   - if they are alive then they can have 0 or more extra lives
; 
; Design a data definition called Health to represent the health of your
; character.
; 
; Design a function called increase-health that allows you to increase the
; lives of a character.  The function should only increase the lives
; of the character if the character is not dead, otherwise the character
; remains dead.


;; Health is String
;; interp. character is
;;    - dead if they have less than 0 lives
;;    - alive if they have 0 or more lives
(define h0 -1)
(define h1 2)


(check-expect (increase-health -1) -1)
(check-expect (increase-health 5) 6)


;; Number -> Number
(define (increase-health lives)
  (cond [(< lives 0) lives]
        [else (+ lives 1)]))
