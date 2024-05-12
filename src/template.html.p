◊(->html
  (html
   #:lang "en-CA"
   (head
    (meta #:charset "UTF-8")
    (title ◊(hash-ref metas 'title))
    (link #:rel "stylesheet" #:type "text/css" #:media "all" #:href "/css/main.css"))
   (body
    (header
     ◊; (div #:class "navigation" (a #:href "/index.html" "Home")) 
     (hr))
    (main doc)
    (footer
     (div)
     (hr)
     (div
      (a #:href "https://validator.w3.org/check/referer" (img #:src "/images/htmlval2.gif" #:alt "Valid HTML!" #:width "88" #:height "31"))
      (a #:href "https://jigsaw.w3.org/css-validator/check/referer" (img #:src "/images/w3-valid-css.gif" #:alt "Valid CSS!" #:width "88" #:height "31"))
      (a #:href "https://validator.w3.org/feed/check.cgi?url=https%3A%2F%2Fwww.ckuhl.com%2Ffeed.xml" (img #:src "/images/valid-atom.png" #:alt "Valid Atom 1.0 feed!" #:title "Validate my Atom 1.0 feed" #:width "88" #:height "31")))
     (div
      (small "In lieu of Google Analytics, please send an email with irrelevant personal information to " (code "analytics@") ".")
      (br)
      (small "For less information on this, read the " (a #:href "/privacy-policy.html" "privacy policy") "."))))))
