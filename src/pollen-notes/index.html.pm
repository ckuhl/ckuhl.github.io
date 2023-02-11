#lang pollen

◊(require
  pollen/pagetree
  pollen/template/html
  racket/list
)
◊(let () (current-pagetree (load-pagetree "../index.ptree")) "")

◊(define-meta title "Notes on Pollen")


◊(h1 "Notes on Pollen")

◊(apply ul (map (compose li node->link) (children 'pollen-notes/index.html)))
