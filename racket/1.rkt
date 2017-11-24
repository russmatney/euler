#lang racket

;; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;; Find the sum of all the multiples of 3 or 5 below 1000.

(let ([lst (build-list 31 values)])
  (for ([num lst])
    (let ([res (list (modulo num 5) (modulo num 3))])
      (match res
        [(list 0 0) (println "fizzbuzz")]
        [(list 0 _) (println "buzz")]
        [(list _ 0) (println "fizz")]
        [(list _ _) (println num)]
        ))))
