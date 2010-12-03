#!/usr/bin/perl

use strict;

my($bookstylefile,$outputdirectory,$lilyponddirectory) = @ARGV;

my %contenthash;

die "Can't find lilyponddirectory:$lilyponddirectory due to $!"		if ! -d $lilyponddirectory;
die "Can't find outputdirectory:$outputdirectory due to $!"			if ! -d $outputdirectory;
die "Can't find bookstylefile:$bookstylefile due to $!"				if ! -f $bookstylefile;

print STDERR "Texfile:$bookstylefile\nLilyPondDir:$lilyponddirectory\n";


opendir(DIR, $lilyponddirectory) || die "can't opendir lilyponddirectory $lilyponddirectory: $!";
my @lilypondfiles = grep { /\.ly$/ && -f "$lilyponddirectory/$_" } ( readdir(DIR) );
closedir(DIR);


my $toberemovedchars = qw/[^\w\d\,\ \'\(\)\-\+\xE4\xFC\xF6\xC4\xDC\xD6\xDF]+/;

for my $filename (@lilypondfiles)
{
	print STDERR "Filename:$filename\n";
	
	my $filecontent	= readcontentsfromfile($lilyponddirectory.'/'.$filename);
	my $title		= undef;
	
	next if !length($filecontent);

	if( $filecontent =~ m/\\header\s*\{([^}]*)\s*\}/s )
	{
		my($header) = ($1);
		
		$header	=~ s/$toberemovedchars//g;
		
		# print STDERR "Found Header:$header\n";
		if( $header =~ m/\stitle\s*\=\s*\"(.*?)\"/s )
		{
			$title	= $1;
		}
	}
	if( !length($title) )
	{
		$title	= $filename;
		$title	=~ s/\.ly$//;
		$title	=~ s/$toberemovedchars//g;
		$title	=~ s{(\W|^)(\w+)}{$1.ucfirst($2)}gex;
		print STDERR "File has no title set in header using: $title\n";
	}
	
	if( !length($title) ) 
	{
		print STDERR "Could not find out title for file:$filename - skipping file\n";
		next;
	}
	
	my $newfilename = $filename;
	
	$newfilename =~ s/[^a-z\d\.]//gi;
	$contenthash{$newfilename}	=	{		title		=>	convertumlautstotex($title),
											sorttitle	=>	convertforsortorder($title),
									};

	$filecontent	=~ s/#\(set-default-paper-size.*?\)//g;
	$filecontent	=~ s/\\epsfile.*//g;
	$filecontent	=~ s{\\(?:paper|layout)\s*\{(.*\})}{ 
	
		my $bigmatch = $1;
		my $level = 1;
		
#		print STDERR __LINE__." Level: $level $filename ".substr($bigmatch,0,20)."...\n";
		
		do
		{

			if( $bigmatch =~ s/^[^\}]*\{(.*)$/$1/s )
			{
				$level++;
#				print STDERR __LINE__." Level: $level $filename ".substr($bigmatch,0,20)."...\n";
			}
			if( $bigmatch =~ s/^[^\{]*\}(.*)$/$1/s ) 
			{
				$level--;
#				print STDERR __LINE__." Level: $level $filename ".substr($bigmatch,0,20)."...\n";
			}
		}
		while( ($level> 0) && ($bigmatch =~ m/[{}]+/s) );
		
#		print STDERR __LINE__." Level: $level $filename ".substr($bigmatch,0,20)."...\n";
		$bigmatch;
			    }gexs;		# remove paper and layout tags
				
				
				
				
	
	writecontentstofile($outputdirectory.'/'.$newfilename,$filecontent);
}

{
	my $lilypondtext		= undef;
	
	foreach my $filename (sort{ $contenthash{$a}{sorttitle} <=> $contenthash{$b}{sorttitle} }( keys %contenthash) )
	{
		$lilypondtext		.= '\\addcontentsline{toc}{section}{'.$contenthash{$filename}{title}."}\n\\lilypondfile{".$filename."}\n\n\\pagebreak\n\n";
	}

	my $latextitleprefix	= `basename $lilyponddirectory`;
	$latextitleprefix		=~ /\..*?$/;
		
	my $latexinput			= readcontentsfromfile($bookstylefile);	
	$latexinput				=~ s/\\title\{(.*?\})/\\title\{$latextitleprefix $1/;
	$latexinput				=~ s/LILYPONDFILESWILLBEINSERTEDHERE/$lilypondtext/;

	print $latexinput;
}


exit;

sub readcontentsfromfile($)
{	
	my($filename) = (@_);
	local $/= undef;
	
 	open(INPUTFILE,'<'.$filename)	|| die "Could not open file for reading: $filename due to $!";
	my $filecontent = <INPUTFILE>;
	close(INPUTFILE)				|| die "Can't close file:$filename due to $!";
	
	return $filecontent;
}


sub writecontentstofile($$)
{
	my($filename,$filecontent) = (@_);
	local $\= undef;
	
 	open(OUTPUTFILE,'>'.$filename)	|| die "Could not open file for writing: $filename due to $!";
	print OUTPUTFILE $filecontent	|| die "Can't write to file:$filename due to $!";
	close(OUTPUTFILE)				|| die "Can't close file:$filename due to $!";

	return undef;
}


sub convertumlautstotex($)
{
	my($text) = (@_);

	$text =~ s/ä/\"a/g;
	$text =~ s/ö/\"o/g;
	$text =~ s/ü/\"u/g;
	$text =~ s/Ä/\"A/g;
	$text =~ s/Ö/\"O/g;
	$text =~ s/Ü/\"U/g;
	$text =~ s/ß/\\3/g;	


	$text =~ s/\xE4/\"a/g;
	$text =~ s/\xFC/\"o/g;
	$text =~ s/\xF6/\"o/g;
	
	$text =~ s/\xC4/\"A/g;
	$text =~ s/\xDC/\"U/g;
	$text =~ s/\xD6/\"O/g;
	
	$text =~ s/\xDF/\\3/g;
	
	return $text;
}


sub convertforsortorder($)
{
	my $name = shift;
	
	$name =~ s/\xE4/ae/g;
	$name =~ s/\xFC/ue/g;
	$name =~ s/\xF6/oe/g;
	
	$name =~ s/\xC4/ae/g;
	$name =~ s/\xDC/ue/g;
	$name =~ s/\xD6/oe/g;
	
	$name =~ s/\xDF/ss/g;

	$name =~ s/\%E4/ae/g;
	$name =~ s/\%FC/ue/g;
	$name =~ s/\%F6/oe/g;
	
	$name =~ s/\%C4/ae/g;
	$name =~ s/\%DC/ue/g;
	$name =~ s/\%D6/oe/g;
	
	$name =~ s/\%DF/ss/g;

	
	$name =~ s/ä/ae/g;
	$name =~ s/ö/oe/g;
	$name =~ s/ü/ue/g;
	$name =~ s/Ä/Ae/g;
	$name =~ s/Ö/Oe/g;
	$name =~ s/Ü/Ue/g;
	$name =~ s/ß/ss/g;	
	
	$name =~ s/[^a-z\d]//gi;
	
	return lc $name;
}
