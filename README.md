# Chris Kuhl's Web Log

A strange static website written using [Pollen](https://docs.racket-lang.org/pollen/), by way of [Racket](https://racket-lang.org/).

A mystery for all parties involved, including myself.

It's tempting to ask "Why use Racket when it is obscure and obtuse, but the answer is an unsatisfying 'because it is obscure and obtuse.'"
When anything is possible and everything is a competition, sometimes joy can be found in creating something no one else would _want_ to create.


## Structure
The basic structure is thus:

- Meta: The structure roughly reflects project structure
- `./drafts` does not exist and you should not worry about it
- `./docs` is where the compiled site is generated before publishing
- `./src/*` is source of the Pollen site
- `./src/pollen.rkt` defines meta-functions that affect the rest of the site
- `./src/{archive,css,images}` stores static content
- `Makefile` does the needful


## To-do list (i.e. things that may never get done)
- More archived content:
    - Iterations of my previous web site
        - Option 1: Use links to web.archive.org
        - Option 2: Download and run site locally, freeze content
- More _different_ content:
    - Arrange in a certain booklike fashion
    - Document exactly how Pollen works
        - Or at least, well enough that I understand it
- Style points:
    - Work on / fix the nav bar at the top
    - More totally radical 88x31px footer images
- Project structure:
    - Can / should I store static content separate from dynamic content?
    - e.g. specially `.gitignore` dynamically generated pages and store the static pages in `~/docs`


## Inspirations
### Miscellaneous
- [Random content mirrored from Geocities](http://cs.gettysburg.edu/~duncjo01/archive/patterns/geocities/backgrounds/Generic/)
- [GifCities (as provided by Archive.org)](https://gifcities.org/)
- [Ironwood Solar](https://solar.leo32345.com/)
    - Similarly: [Solar Low Tech Magazine](https://solar.lowtechmagazine.com/)


### Other Racket sites
- https://codeberg.org/dangermuse/dangermuse-blog/
- https://andregarzia.com/2022/05/How-this-blog-works-or-embracing-chaos.html
- https://www.skybluetrades.net/blog/2021/05/2021-05-16-moving-to-pollen.html
- https://ryanjung.dev/thoughts/pollen.html


### Wip notes: RSS and ATOM
- https://github.com/otherjoel/try-pollen/blob/master/feed.xml.pp
- https://codeberg.org/dangermuse/dangermuse-blog/src/branch/main/feed.xml.pp
- https://www.google.com/search?client=firefox-b-d&q=%22feed.xml.pp%22
- http://web.archive.org/web/20201018101014/http://blevs.github.io/pollen-feed-tutorial/
    - https://github.com/Blevs/pollen-feed-tutorial/blob/master/search-doc.rkt


## Notes to self
- `Mac: Option + Shift + V` for ◊
