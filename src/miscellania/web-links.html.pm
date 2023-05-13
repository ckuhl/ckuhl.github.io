#lang pollen



◊(define-meta title "Web links that catch my fancy")

◊h1{Web links}

(struct link (url title description))

(define (entry l)
    (link (link-url l) (link-title l))
    (p (link-description l)))

(define links
    (list
     (make-link
        "https://nechnif.net/index.html"
        "nechnif.net: nechnif.net"
        "A blog of someone who worked at the ICECUBE Neutrino Detector")))

(map entry links)
