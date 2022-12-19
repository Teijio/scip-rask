#lang sicp

(define (my-sqrt value)
  (sqtr-iter value 1.0 0))

(define (sqtr-iter value guess privguess)
  (if (good-enough? guess privguess)
    guess
    (sqtr-iter value (improve-guess value guess) guess)))

(define (good-enough? guess privguess)
  (aprox-equal-at guess privguess 0.000001))

(define (averege val1 val2)
  (/ (+ val1 val2) 2))

(define (improve-guess value guess)
  (averege guess (/ value guess)))