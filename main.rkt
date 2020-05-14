#lang racket

(require "table_parser.rkt")


(let loop ()
  (display ">")
  (define input (read-line (current-input-port) 'any))
  (cond
    [(regexp-match #rx"load\\(\"(.*)\"\\)" input)
     (load (list-ref (regexp-match #rx"load\\(\"(.*)\"\\)" input) 1))]
(loop)))