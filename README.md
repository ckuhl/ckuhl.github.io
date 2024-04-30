# Chris Kuhl's Web Log

A strange static website written using [Pollen], by way of [Racket].

A mystery for all parties involved, including myself.

It's tempting to ask "Why use Racket when it is obscure and obtuse, but the answer is an unsatisfying 'because it is obscure and obtuse.'"
When anything is possible and everything is a competition, sometimes joy can be found in creating something no one else would _want_ to create.


## Structure
The basic structure is thus:

- Meta: The structure roughly reflects project structure
- `./docs` is where the compiled site is generated before publishing
- `./src/` is source of the Pollen site
    - `./src/pollen.rkt` defines meta-functions that affect the rest of the site
    - `./src/{archive,css,images}` stores static content
    - `./src/weblog/` for web log content
    - `./src/et-cetera/` for, uh, miscellaneous content
- `Makefile` does what it says on the tin


## To-do list (i.e. things that may never get done)
- More archived content:
    - Iterations of my previous web site
        - Option 1: Use links to web.archive.org
        - Option 2: Download and run site locally, freeze content
- More _different_ content:
    - Arrange in a certain booklike fashion
    - Document exactly how Pollen works
        - Or at least, well enough that I understand it
    - References to sites I think are neat!
- Style points:
    - Update background - lined paper is amusing but suffers from legibility
    - Work on / fix the nav bar at the bottom
    - More totally radical 88x31px footer images
- Project structure:
    - Can / should I store static content separate from dynamic content?
    - e.g. specially `.gitignore` dynamically generated pages and store the static pages in `~/docs`
- Internals:
    - Fix the way page tree references are done
    - Fix the generation of navigation elements by notional sibling
        - e.g. "Next X article, but not next X in the page tree"

## Inspirations
### GIF content
- [Random content mirrored from Geocities]
- [GifCities (as provided by Archive.org)]
- [Pixel See] for 32x32 and 88x31 gifs

### Cool style
- [Ironwood Solar]
- [Solar Low Tech Magazine]

### Other Racket sites
- [Dangermuse Blog (archive.org)] ([source for Dangermuse])
- [How this blog works, or, embracing chaos • AndreGarzia.com]
- [sky blue trades  | A(nother) New Start: Pollen!]
- [Migrating my blog to Pollen]
- [Calculum] ([source for Calculum])


### WIP notes: RSS and ATOM
#### Yet-to-do: Style the RSS feed:
- [Style your RSS feed]
- [Example styled RSS feed]

#### References from setting up my site's RSS feed
- _TODO: Can / should I write a web log post on this? Maybe!_
- RSS feed from [otherjoel/try-pollen (GitHub)]
- [Dangermuse Blog's RSS generator]
- [Blevs Pollen Feed Tutorial (archive.org)] ([source for Blevs tutorial])


## Notes to self
- Mac: `Option` + `Shift` + `V` for ◊

<!-- Markdown references    -->

[Pollen]: https://docs.racket-lang.org/pollen/
[Racket]: https://racket-lang.org/

[Random content mirrored from Geocities]: http://cs.gettysburg.edu/~duncjo01/archive/patterns/geocities/backgrounds/Generic/
[GifCities (as provided by Archive.org)]: https://gifcities.org/
[Pixel See]: https://pixelsea.neocities.org

[Ironwood Solar]: http://web.archive.org/web/20230719183115/https://solar.leo32345.com/
[Solar Low Tech Magazine]: https://solar.lowtechmagazine.com/

[Dangermuse Blog (archive.org)]: https://web.archive.org/web/20220808130856/https://dangermuse.ca/
[source for Dangermuse]: https://codeberg.org/dangermuse/dangermuse-blog/

[How this blog works, or, embracing chaos • AndreGarzia.com]: https://andregarzia.com/2022/05/How-this-blog-works-or-embracing-chaos.html
[sky blue trades  | A(nother) New Start: Pollen!]: https://www.skybluetrades.net/blog/2021/05/2021-05-16-moving-to-pollen.html
[Migrating my blog to Pollen]: https://ryanjung.dev/thoughts/pollen.html
[Calculum]: https://calculum.ca/
[source for Calculum]: https://github.com/matteodelabre/calculum/

[Style your RSS feed]: https://darekkay.com/blog/rss-styling/
[Example styled RSS feed]: http://feeds.bbci.co.uk/news/england/london/rss.xml

[otherjoel/try-pollen (GitHub)]: https://github.com/otherjoel/try-pollen/blob/master/feed.xml.pp
[Dangermuse Blog's RSS generator]: https://codeberg.org/dangermuse/dangermuse-blog/src/branch/main/feed.xml.pp
[Blevs Pollen Feed Tutorial (archive.org)]: http://web.archive.org/web/20201018101014/http://blevs.github.io/pollen-feed-tutorial/
[Source for Blevs tutorial]: https://github.com/Blevs/pollen-feed-tutorial/blob/master/search-doc.rkt
