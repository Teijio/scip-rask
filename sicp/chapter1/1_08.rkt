#lang sicp

(define (cube-root value)
  (cube-root-iter value 1.0 0))

(define (cube-root-iter value guess priv-guess)
  (if (good-enough? guess priv-guess)
    guess
    (cube-root-iter value (improve-guess value guess) guess)))

(define (improve-guess value guess)
  (/ (+ (/ value (square guess)) (* 2 guess))
     3))

(cube-root 8)