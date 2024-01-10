#lang racket

(require
  pollen/core
  pollen/tag
  pollen/template
  pollen/pagetree
  racket/date
  sugar/coerce
  txexpr)
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

; FIXME: Derivative of the above `node->link` but with dates
;  This ain't awful, but it is certainly one of those could-be-better
(define (node->dated-link node)
  (define node-string (->string node))
  (define link-name
    (string-join
     (list
      (select-from-metas 'date node)
      (select-from-metas 'title node))
     ": "))
  (link (string-append "/" node-string) link-name)
  )

; Modified from https://github.com/malcolmstill/mstill.io/blob/master/blog/pollen.rkt
; Converts a string "2015-12-19" or "2015-12-19 16:02" to a Racket date value
(define (datestring->date datetime)
  (match (string-split datetime)
    [(list date time)
     (match (map string->number (append (string-split date "-") (string-split time ":")))
       [(list year month day hour minutes) (seconds->date (find-seconds 0 minutes hour day month year))])]
    [(list date)
     (match (map string->number (string-split date "-"))
       [(list year month day) (seconds->date (find-seconds 0 0 0 day month year))])]))

; Helper: Combine `next` with `sibling` (for terminal nodes)
(define (next-sibling p)
  (let* ([sib (siblings p)]
         [next-index (add1 (index-of sib p))])
    (eprintf "Children: ~v~n" (children p))
    (cond
      ; Not great: I want to return false if and only if this does not return false
      ; FIXME: This doesn't currently work for parentier stuff
      ; Really what I care about is signifying _where_ the next content exists within
      ; Or do I really care about that?
      [(not (equal? (children p) #f)) #f]
      [(>= next-index (length sib)) #f]
      [else (list-ref sib next-index)])))

; Helper: Combine `prev` with `sibling` (for terminal nodes)
(define (prev-sibling p)
  (let* ([sib (siblings p)]
         [prev-index (sub1 (index-of sib p))])
    (eprintf "Children: ~v~n" (children p))
    (cond
      ; Not great: I want to return false if and only if this does not return false
      ; FIXME: This doesn't currently work for parentier stuff
      [(not (equal? (children p) #f)) #f]
      [(< prev-index 0) #f]
      [else (list-ref sib prev-index)])))
