;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define L1 (cons "a" (cons "b" (cons "c" empty))))
(define L2 (list "a" "b" "c"))
#;
(equal? L1 L2)
#;
(list (+ 1 2) (+ 3 4) (+ 5 6))

(define L3 (list "b" "c"))
(cons "a" L3) ;(list "a" "b" "c")        adds "a" to the existing list
(list "a" L3) ;(list "a" (list "b" "c")) creates a new fully formed list

(append L1 L2) ;consumes two lists and adds them together, like ...rest in JS
