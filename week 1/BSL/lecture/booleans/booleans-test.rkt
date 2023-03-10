;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname booleans-test) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define a 5)
(define b 6)
(< a b)

(define c "test")
(define d "test51")
(string=? c d)

(define (isASmaller a b)
  (< a b))

(isASmaller a b)