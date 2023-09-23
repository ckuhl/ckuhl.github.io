#lang pollen

◊(require
 pollen/pagetree
 pollen/template/html
 racket/list
 "links.rkt"
 )

◊; TODO: Is this the best way to insert the current pagetree?
◊(let () (current-pagetree (load-pagetree "../index.ptree")) "")

◊(define-meta title "Links")

◊(h1 "Links")

◊(ul
◊for/splice[[(link links)]]{
◊li{
	◊a[#:href (hash-ref link 'url)]{
		◊(hash-ref link 'title)
	}
	◊(hash-ref link 'note)
}})

