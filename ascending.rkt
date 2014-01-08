;; Coreen Yuen

;; returns boolean value true if list of numbers ascending
;; empty list and one element list return true, tail-recursive
(define (ascending x)
  (cond ((null? x) #t)
        ((eqv? (length x) 1) #t)
        ((not(> (cadr x) (car x))) #f)
        (else (ascending (cdr x)))))
