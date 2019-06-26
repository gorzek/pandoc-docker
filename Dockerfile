FROM tgolson/rpi-haskell:latest

MAINTAINER James Huffman <gorzek@gmail.com>

# install latex packages [test]
RUN apt-get update -y \
  && apt-get install -y -o Acquire::Retries=10 --no-install-recommends \
    texlive-latex-base \
    texlive-xetex latex-xcolor \
    texlive-math-extra \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    fontconfig \
    lmodern \
    libghc-zlib-dev \
    pandoc

WORKDIR /source

ENTRYPOINT ["pandoc"]

CMD ["--help"]
