;; Coreen Yuen
;; program to test if the elements in a list are in sorted ascending order

;; returns boolean value true if list of numbers ascending
;; empty list and one element list return true, tail-recursive
(define (ascending x)
  (cond ((null? x) #t)
        ((eqv? (length x) 1) #t)
        ((not(> (cadr x) (car x))) #f)
        (else (ascending (cdr x)))))

;; unit test cases
(define ascending-tests
  (test-suite 
   "tests for ascending program"
   (check-equal? (ascending '()) #t "empty list")
   (check-equal? (ascending '(1)) #t "one element list")
   (check-equal? (ascending '(1 2 5)) #t "in-order list")
   (check-equal? (ascending '(2 4 1)) #f "out-of-order list")
   (check-equal? (ascending '(2 2)) #f "repeat list")
   ))

;; this line runs the tests
(run-tests ascending-tests)
