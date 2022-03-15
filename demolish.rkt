
;; demolish-starter.rkt

;; =================

; 
; PROBLEM A:
; 
; You are assigned to develop a system that will classify 
; buildings in downtown Vancouver based on how old they are. 
; According to city guidelines, there are three different classification levels:
; new, old, and heritage.
; 
; Design a data definition to represent these classification levels. 
; Call it BuildingStatus.
; 


;; Data definitions:
;; BuildingStatus is one of:
;;  - new
;;  - old
;;  - heritage

;; =================

; 
; PROBLEM B:
; 
; The city wants to demolish all buildings classified as "old". 
; You are hired to design a function called demolish? 
; that determines whether a building should be torn down or not.
; 


(define newBuilding "new")
(define oldBuilding "old")
(define heritageBuilding "heritage")
#;
(define (demolish? building)
  (cond [(string=? building oldBuilding) (...)]
        [else (...)]))

;; Functions:

;; BuildingStatus -> Bool
;; check if building should be torn down
(check-expect (demolish? "new") #f)
(check-expect (demolish? "old") #t)
(check-expect (demolish? "heritage") #f)

(define (demolish? building)
  (string=? building oldBuilding))




