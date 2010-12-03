author: patrick stein
the part I've done is under the creative commons public domain license. http://creativecommons.org/publicdomain/zero/1.0/deed.de
the book directory contains other cc licensed material I got from the musikpiraten website.


This project creates PDF songbooks from lilypond directories
=============================================================
I've created the scripts in this directory to create a PDF automatically from the original Lilypond data files.

It creates files like [this pdf](http://www.jinx.de/Weihnachtslieder.ipad.cc.pdf)


Background
----------

Two days ago I saw the CC licensed Weihnachtslieder PDF and got the shivers. It was so pixelated I could not even watch it on screen. I've looked at it closer and saw that the creator used a OpenOffice document to create the PDF. He/She also inserted rendered images in the OpenOffice document - no wonder it was so horrible to look at.
I've then taken a look at the original data and it was done in LilyPond - which I've never heard about before. LilyPond seems to be a special kind of TeX markup and it is used to do create songfiles that look great and are easy to create.
As I've used TeX for some other project a few years ago I was sure that I could create a PDF with LilyPond and TeX to create perfect , sharp output.


Requirements
------------
* TeX ( I used the one from http://www.tug.org/mactex/ )
* LilyPond.app ( I used the one from http://lilypond.org/ )
* a Mac ( a linux machine will also work if you change the paths I presume )


Usage
-----
Open Terminal and go to this directory. Type 'createSongBooks.zsh' and after some time you should get a Weihnachtslieder.iPad.pdf in this directory.


How it works
------------
The create script creates books for every directory in the books directory as well as for every bookstyle (*.tex files ) present in the current directory.
It calls the createlatexbook.perl script for every book and creates to merge the LaTeX style file with the files present in the current book directory.
After that lilybook is called and the latex is generated. 
Then pdflatex is called to create the final pdf.


ToDo
----
* get LaTeX fixed ( paper margins )
* get some Songs fixed ( ros ist entsprungen , adeste )
* correct usage of utf8 everywhere. Currently I convert Umlauts to "u symbols


Bugs
----
Currently the lilypond process exits sometimes with fonts that are not found. That's why it currently will test not the exit status of lilypond book process.
I call latex twice to get the tables of contents filled correctly - anybody has knowledge how to correct this ?






