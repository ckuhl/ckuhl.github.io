#lang pollen

◊(require
 pollen/pagetree
 pollen/template/html
 racket/list
 )

◊; TODO: Is this the best way to insert the current pagetree?
◊(let () (current-pagetree (load-pagetree "../index.ptree")) "")

◊(define-meta title "Web log")


◊(h1 "Web log")

◊(apply
 ul
 (map
  (compose li node->dated-link)
  (reverse (children 'weblog/index.html))))
