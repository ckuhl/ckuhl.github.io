#lang racket

(require pollen/tag pollen/template pollen/core txexpr sugar/coerce)
(provide (all-defined-out))

; Yoinked from:
;  https://github.com/rymaju/pollen-ryanjung.dev/blob/fc506d2292703b0086025cc72abe78cc3adad4e2/src/pollen.rkt#L15-L18
(define (link url text) `(a ((href ,url)) ,text))
(define (node->link node)
  (define node-string (->string node))
  (define link-name (or (select-from-metas 'title node) node-string))
  (link (string-append "/" node-string) link-name))
