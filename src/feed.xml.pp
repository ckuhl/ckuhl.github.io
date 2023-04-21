#lang pollen

◊(require
    pollen/core
    pollen/pagetree
    pollen/file
    racket/path
    racket/string)

◊(define here-path (select-from-metas 'here-path metas))

◊(let () (current-pagetree (load-pagetree "index.ptree")) "")


◊; Borrowed / motified / iterated-upon from:
◊; https://git.jeremydormitzer.com/jdormit/jeremy-website/src/commit/0df3fc385caa8080d81377b4a0db3e0fdf1251f1/src/blog/feed.xml.pp

◊(define (render-item item)
   (let ((src (get-source (path->string (path->complete-path (symbol->string item))))))
     (format
       "<item><title>~a</title><link>~a</link></item>"
       (select 'h1 src)
       (format "https://www.ckuhl.com/~a" item))))

◊(define (render-items items)
   (string-join (map render-item items) "\n"))

<rss version="2.0">
  <channel>
    <title>Chris Kuhl's Web Log</title>
    <link>https://www.ckuhl.com/weblog/</link>
    <description>The personal-ish web log of one Christian Kuhl</description>
    <language>en-CA</language>
    <ttl>60</ttl>
    ◊(render-items (children "weblog/index.html"))
  </channel>
</rss>
