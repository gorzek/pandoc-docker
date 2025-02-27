# Pandoc Docker Container for armhf platforms

All credit to James Gregory for the original pandoc Dockerfile: https://github.com/jagregory/pandoc-docker

[Docker](https://www.docker.io/) container for the aptitude distribution of [Pandoc](http://johnmacfarlane.net/pandoc), with Latex tools installed.

    docker run gorzek/pandoc-armhf

    pandoc [OPTIONS] [FILES]
    Input formats:  docbook, haddock, html, json, latex, markdown, markdown_github,
                    markdown_mmd, markdown_phpextra, markdown_strict, mediawiki,
                    native, opml, rst, textile
    Output formats: asciidoc, beamer, context, docbook, docx, dzslides, epub, epub3,
                    fb2, html, html5, json, latex, man, markdown, markdown_github,
                    markdown_mmd, markdown_phpextra, markdown_strict, mediawiki,
                    native, odt, opendocument, opml, org, pdf*, plain, revealjs,
                    rst, rtf, s5, slideous, slidy, texinfo, textile
                    [*for pdf output, use latex or beamer and -o FILENAME.pdf

A `/source` directory is created in the container, which can be mapped for use with relative file paths. Pandoc will always be run from the `/source` directory in the container.

    docker run -v `pwd`:/source gorzek/pandoc-armhf -f markdown -t html5 myfile.md -o myfile.html
