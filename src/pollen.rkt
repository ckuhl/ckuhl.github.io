#lang racket

(require pollen/tag pollen/template pollen/core txexpr sugar/coerce)
(provide (all-defined-out))

; Alias the 'root element to actually be 'pollen
;; This is because 'root is not allowed to be a direct child of 'body
;; Using a custom element is the best way to avoid causing any problems here
(define (root . elements)
   (txexpr 'div empty elements))

; Yoinked from:
;  https://github.com/rymaju/pollen-ryanjung.dev/blob/fc506d2292703b0086025cc72abe78cc3adad4e2/src/pollen.rkt#L15-L18
(define (link url text) `(a ((href ,url)) ,text))

(define (node->link node)
  (define node-string (->string node))
  (define link-name (or (select-from-metas 'title node) node-string))
  (link (string-append "/" node-string) link-name))
