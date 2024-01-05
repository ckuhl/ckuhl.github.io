#lang pollen

◊(require
 pollen/pagetree
 pollen/template/html
 racket/list
 "words.rkt")

◊; TODO: Is this the best way to insert the current pagetree?
◊(let () (current-pagetree (load-pagetree "../index.ptree")) "")

◊(define-meta title "Words I had to look up")

◊(h1 "Words I had to look up")

◊(ul
◊for/splice[[(word words)]]{
	◊li{◊word}}
)
