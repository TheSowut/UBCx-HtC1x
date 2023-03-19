;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname compount-data) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
              ;name ;fields
(define-struct pos (x y))

; constructor
(make-pos 3 6)

; can be stored as variable
(define P1 (make-pos 3 6))
(define P2 (make-pos 9 12))

; get x
(pos-x P1) ;3
(pos-y P2) ;12

;predicate
(pos? P1)      ;true
(pos? "hello") ;false