#lang pollen

◊(require
 pollen/pagetree
 pollen/template/html
 racket/list
 )

◊; TODO: Is this the best way to insert the current pagetree?
◊(let () (current-pagetree (load-pagetree "../index.ptree")) "")

◊(define-meta title "Et Cetera")


◊(h1 "Et Cetera")

◊(apply
 ul
 (map
  (compose li node->link)
  (reverse (children 'et-cetera/index.html))))
