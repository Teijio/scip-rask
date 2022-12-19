#lang sicp

(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (better-good-enough? prev-guess guess) (< (abs (- guess prev-guess)) 0.00001))

(define (better-sqrt-iter prev-guess guess x)
    (if (better-good-enough? prev-guess guess)
    guess
    (better-sqrt-iter guess (improve guess x)
    x)))
    
(define (better-sqrt x) (better-sqrt-iter 0 1.0 x))