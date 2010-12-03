#!/bin/zsh

if [[ ! -f `basename $0` ]];
then 
	echo "Start this from the directory it lies in."
	exit 0;
fi

echo -n "Searching for LilyPond application:"

if [[ -d /Applications/LilyPond.app/ ]];
then
	lilypondpath=/Applications/LilyPond.app/Contents/Resources/bin
else
	lilypondpath=`mdfind LilyPond.app|grep '\/LilyPond.app$' |head -1`/Contents/Resources/bin
fi

echo "$lilypondpath";

PATH=$PATH:$lilypondpath


basedirectory=`pwd`
bookdirectory=$basedirectory/books
resultingdirectory=$basedirectory/resultingpdfs


for bookstyle in *.tex
do
	bookstylename=`echo $bookstyle|perl -pe 's/\.tex$//;'`

	cd $bookdirectory
	for singlebookdirectory in *
	do
		bookname=$singlebookdirectory
		intermediatedirectory=$basedirectory/intermediate.$bookstylename.$bookname
		
		rm -rf $intermediatedirectory
		mkdir $intermediatedirectory
		
		cd $intermediatedirectory

		perl $basedirectory/createlatexforbook.perl $basedirectory/$bookstyle $intermediatedirectory $bookdirectory/$singlebookdirectory >$bookname.tex
		
		while [[ ! -f lilypond/$bookname.tex ]]
		do
			lilypond-book --format=latex --output=lilypond $bookname.tex
			# lilypond-book --output=lilypond $bookname.tex || exit;
		done

		cd lilypond
		
		pdflatex $bookname.tex
		pdflatex $bookname.tex			# run twice for creating the table of contents

		cp $bookname.pdf $basedirectory/$bookname.$bookstylename.pdf
		cd $basedirectory
	
	done
done
