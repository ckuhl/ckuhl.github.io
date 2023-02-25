#lang pollen

◊(require
 pollen/pagetree
 pollen/template/html
 racket/list
 )

◊; TODO: Is this the best way to insert the current pagetree?
◊(let () (current-pagetree (load-pagetree "../index.ptree")) "")

◊(define-meta title "Notes on Pollen")


◊(h1 "Notes on Pollen")

◊(apply ul (map (compose li node->link) (children 'notes-on-pollen/index.html)))
