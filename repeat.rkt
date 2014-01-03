;; Coreen Yuen

#lang racket

;; function returns #t if there is at least one repeated adjacent element in given list
(define (twice s)
  (cond ((null? s) #f)
    ((null? (cdr s)) #f)
    ((equal? (car s) (cadr s)) #t)
    (else (twice (cdr s)))))
