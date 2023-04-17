# Chris/tian Kuhl's Personal Site

A strange static website written using
[Pollen](https://docs.racket-lang.org/pollen/), by way of
[Racket](https://racket-lang.org/).

A mystery for all parties involved, including myself.

It's tempting to ask "Why use Racket when it is obscure and obtuse, but the
answer is an unsatisfying 'because it is obscure and obtuse.'" When anything is
possible and everything is a competition, sometimes joy can be found in
creating something no one else would _want_ to create.


## Structure

If you're unfamiliar with Pollen sites (i.e. a normal human), the basic
structure is:

- Structure roughly reflects project structure
- `./drafts` does not exist and you should not worry about it
- `./docs` is where the compiled site is generated before publishing
- `./src/*` is source of the Pollen site
- `./src/pollen.rkt` defines meta-functions that affect the rest of the site
- `./src/{archive,css,images}` stores static content
- `Makefile` is what does the needful


## To-do list (i.e. things that may never get done)

- Add more pages (content?)
    - Arrange in a certain booklike fashion
    - Document exactly how Pollen works
        - Or at least, well enough that I understand it
- More totally radical 88x31px footer images
- Implement RSS [when I have the brainpower to understand
  it](https://github.com/otherjoel/try-pollen/blob/52e2066aa58c7cfa3003ad2566b9606b478779fd/feed.xml.pp)


## Sources (for gifs, etc.)

- http://cs.gettysburg.edu/~duncjo01/archive/patterns/geocities/backgrounds/Generic/
- [GifCities (as provided by Archive.org)](https://gifcities.org/)
