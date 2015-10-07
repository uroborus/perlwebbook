# How to turn these files into a book

In this repostitory, you will find the chapters written in
[Markdown](https://daringfireball.net/projects/markdown/). Markdown files are
pretty readable, but you may well want to convert the source files into other
formats. There is a Makefile that you can use you do that, but you will need
various other tools installed. This file explains which tools are required,
what they are required for and how to get them.

## Make

[Make](https://en.wikipedia.org/wiki/Make_%28software%29) is the standard Unix
tool for controlling how to build files from other files. If you're using a
system based on Unix (that includes Linux, BSD and OSX) then you will almost
certainly already have Make installed. If you're using Windows, then I think
that Microsoft have a similar tool called `nmake` which you can almost
certainly download from one of their many web sites.

## Pandoc

The first file that we need to generate is the
[EPUB](https://en.wikipedia.org/wiki/EPUB) version of the book. And for that
we use a tool called [Pandoc](http://pandoc.org/). This almost certainly
won't already be installed on your system.

For Linux users, Pandoc will be available in your system's package repository.
If you're using a RedHat/Fedora/Centos system you can install it with `sudo
install pandoc`. For a Debian/Ubuntu system, the equivalent command is `sudo
apt-get install pandoc`. If you're using any other kind of Linux then I'm sure
you're clever enough to work out the equivalent command.

For OSX and Windows users, there are installable packages of the latest
version of Pandoc available from their
[Github repository](https://github.com/jgm/pandoc/releases/latest). Simply
download the correct file and double-click it.

Or if you have the OS X package manager homebrew, http://brew.sh, installed in OS X
you can type "brew install pandoc" in the terminal.

Once you have Make and Pandoc installed, you can build an EPUB of the book by
opening a terminal, changing to the directory where you have checked out a
copy of this repository and typing:

    make epub

Or, even, just:

    make

You will end up with a file called perlwebbook.epub which can be used in many
ebook systems.

## Kindlegen

If you want to generate a copy of the book which you can read on an Amazon
Kindle, then you need to go a step further and generate a
[MOBI](https://en.wikipedia.org/wiki/Mobipocket) version of the file. We do
this using a program called Kindlegen which Amazon makes available for many
different platforms. You can download the program
[from their web site](http://www.amazon.com/gp/feature.html?docId=1000765211).

Once you have installed Kindlegen, you can generate your MOBI file by opening
a terminal, changing to the directory where you have checked out a copy of
this repository and typing:

    make mobi

**Note:** The MOBI is generated by converting the EPUB. So running `make mobi`
will automatically run `make epub` first, which means that you will also need
to install Pandoc as described above.

## Calibre

Sometimes you don't want a real ebook version of the book. Sometimes just a
[PDF](https://en.wikipedia.org/wiki/Portable_Document_Format) is enough. So
our Make system supports building a PDF too.

Building a PDF uses another tool called [Calibre](http://calibre-ebook.com/)
which you will need to install if you want to make a PDF.

For Linux users, Calibre will be available in your system's package repository.
If you're using a RedHat/Fedora/Centos system you can install it with `sudo
install calibre`. For a Debian/Ubuntu system, the equivalent command is `sudo
apt-get install calibre`. If you're using any other kind of Linux then I'm
sure you're clever enough to work out the equivalent command,

For OSX and Windows users, there are installable packages of the latest
version of Calibre available from their
[web site](http://calibre-ebook.com/download). Simply download the correct
file and double-click it.

Once you have Calibre installed, you can build a PDF of the book by opening
a terminal, changing to the directory where you have checked out a copy of
this repository and typing:

    make pdf

**Note:** The PDF is generated by converting the EPUB. So running `make mobi`
will automatically run `make epub` first, which means that you will also need
to install Pandoc as described above.

## Conversion Process

This section summarises the software needed to convert the input files into
various output files.

* This repository contains the book's sources in Markdown format.
* An EPUB is created from the Markdown using Pandoc
* A MOBI is created from the EPUB using Kindlegen
* A PDF is created from the EPUB using Calibre

Putting it all together, it looks like this (ebook_convert is the command
line program that we use from the Calibre package):

![Conversion Process](https://raw.githubusercontent.com/davorg/perlwebbook/master/converters.png)