#lang sicp

(define (square x) (* x x))

(define (sum_biggest_two a b c)
        (cond ((and (< a b) (< a c)) (+ (square b) (square c)))
              ((and (< b a) (< b c)) (+ (square a) (square c)))
              ((and (< c a) (< c b)) (+ (square a) (square b)))))
(sum_biggest_two 1 2 3)