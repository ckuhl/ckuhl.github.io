#lang racket

(provide words)


(define words (map string-trim (sort (file->lines "words.txt") string<? )))
