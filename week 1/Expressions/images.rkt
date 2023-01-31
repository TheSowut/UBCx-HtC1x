;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname images) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(circle 10 "solid" "red")
(rectangle 20 8 "solid" "red")
(text "hello" 24 "orange") ;image of string hello in font-size 24px orange

(above (circle 10 "solid" "red")
       (circle 20 "solid" "green")
       (circle 30 "solid" "blue"));place images one below the other

(beside (circle 10 "solid" "green")
        (triangle 15 "solid" "purple"));place images besine one another

(overlay (circle 10 "solid" "red")
         (circle 20 "solid" "yellow")
         (circle 30 "solid" "green"));place images one inside the other