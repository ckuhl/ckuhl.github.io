#lang pollen
◊(require pollen/decode txexpr)


◊(define-meta title "Pollen Notes: How to list all pages in a subdirectory")


◊h1{How to list all pages in a subdirectory}

So it turns out, uh, it might be useful to store files in subdirectories,
and refer back to them by the directory instead of each by their special wizard name.

I have now discovered how to auto-magically generate such lists, however I yet lack the knowledge to teach it to someone else.

I shall return once I have had time to digest, however in the interim I leave you with this:

◊(br)
◊(br)

◊(link
	"https://github.com/rymaju/pollen-ryanjung.dev/blob/fc506d2292703b0086025cc72abe78cc3adad4e2/src/pollen.rkt#L15-L18"
	"Reference to the code I used"
)
