;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lists) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; cons - two argument constructor

(define L1 (cons "Flames" empty))                ; a list of 1 element
(define L2 (cons "Leafs" (cons "flames" empty))) ; a list of 2 elements
(define L3 (cons 10 (cons 9 (cons 10 empty))))   ; a list of 3 elements
(define L4 (cons (square 10 "solid" "blue")
      (cons (triangle 20 "solid" "green")
            empty)))                             ; a list of 2 elements

(first L1)                                       ; first element of a list
(first L2)
(first L4)

(rest L2)                                        ; all elements after first

(first (rest L3))                                ; 2nd element
(first (rest (rest L3)))                         ; 3rd element

(empty? L1)                                      ; check if list is empty