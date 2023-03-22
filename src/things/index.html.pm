#lang pollen

◊(require
 pollen/pagetree
 pollen/template/html
 racket/list
 )

◊; TODO: Is this the best way to insert the current pagetree?
◊(let () (current-pagetree (load-pagetree "../index.ptree")) "")

◊(define-meta title "Things I've created")


◊(h1 "Things!")

◊(apply ul (map (compose li node->link) (children 'things/index.html)))
