#lang pollen

◊(define-meta title "Pollen Notes: File types")

◊h1{A brief enumeration of Pollen file types}

Pollen provides a few different file extensions.
I found the layout of the tutorials a bit confusing -- tell me what everything is and ◊em{then} dive into the details, please!
This is the very short overview I wish I had when I started.


◊h2{◊code{.p}}
The null filetype -- this is useful for dodging ◊code{.gitignore} rules such as ◊code{*.html}.

◊h2{◊code{.ptree}}
A meta filetyle -- it is not rendered directly, but directs pollen as to what files should be rendered.

◊h2{◊code{.pp}}
This extension stands for Pollen Preprocessor (or maybe just PreProcessor) -- it's processed by Pollen and then fed into ◊code{template.html.*}.

◊h2{◊code{.pm}}
This is the first of two "authoring suffices," which means these are intended for writing content as opposed to, uh, coding. This one is text, and Pollen.

◊h2{◊code{.pmd}}
This is the second of the two authoring suffices. It's a marriage of Pollen, text, ◊em{and} MarkDown.
