#lang pollen
◊(require pollen/decode txexpr)


◊(define-meta title "Pollen Notes: The page tree")

◊h1{What's a page tree?}
◊p{
While you could attempt to use directory structure alone to derive the structure of your content, this can be inconvenient!
}

◊p{
There may be times that you don't want to create a subdirectory for a few small pages.
However, you still want to track how each page relates together.
While it feels inconvenient and heavy off the start, using a concrete listing of pages to link together ◊em{once} is honestly much easier in the long run.
}
◊p{
Explicit is easier than implicit, and all that.
}
◊p{
To that end, the pagetree (◊code{.ptree}) is useful for doing exactly that.
You list all the pages once, and then can use utility functions to derive relative pages thereafter.
This can be useful for listing all pages in a subdirectory.
}

◊h1{How to list all pages in a subdirectory}

◊em{TODO: Determine how to access the pagetree in a file. Presently it's a bit frustrating, requiring initialization.}

I shall return once I have had time to digest, however in the interim I leave you with this:

◊(br)
◊(br)

◊(link
		"https://github.com/rymaju/pollen-ryanjung.dev/blob/fc506d2292703b0086025cc72abe78cc3adad4e2/src/pollen.rkt#L15-L18"
		"Reference to the code I used"
 )
