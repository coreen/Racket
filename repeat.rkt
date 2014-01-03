;; Coreen Yuen

#lang racket
(require rackunit)
(require rackunit/text-ui)

;; function returns #t if there is at least one repeated adjacent element in given list
(define (repeat s)
  (cond ((null? s) #f)
    ((null? (cdr s)) #f)
    ((equal? (car s) (cadr s)) #t)
    (else (repeat (cdr s)))))

;; function test cases
(define repeat-test
  (test-suite
  "tests for repeat function"
  (check-equal? (repeat '()) #f "empty list")
  (check-equal? (repeat '(a b b c d e)) #t "repeated list")
  (check-equal? (repeat '(a b c a b)) #f "non-adjacent repeats")
  ))

;; run the test cases
(run-tests repeat-test)
