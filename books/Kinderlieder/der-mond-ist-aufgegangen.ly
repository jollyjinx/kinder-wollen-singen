%=============================================
%   created by MuseScore Version: 0.9.6.3
%          December 8, 2010
%=============================================

\version "2.12.0"



#(set-default-paper-size "a4")

\paper {
  line-width    = 190\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  %%indent = 0 \mm 
  %%set to ##t if your score is less than one page: 
  ragged-last-bottom = ##t 
  ragged-bottom = ##f  
  %% in orchestral scores you probably want the two bold slashes 
  %% separating the systems: so uncomment the following line: 
  %% system-separator-markup = \slashSeparator 
  }

\header {
    title = "Der Mond ist aufgegangen"
    composer = "J.A.P. Schulz (1747-1800)"
    poet = "Matthias Claudius (1740-1815)"
    copyright = "Gemeinfrei
Darf beliebig kopiert und weitergegeben werden!

Gesetzt für www.kinder-wollen-singen.de"
    }

AvoiceAA = \relative c'{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key f \major 
    %barkeysig: 
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4      | % 1
    g f bes a      | % 2
    g2 f4 a      | % 3
    a a d c      | % 4
    bes2 a4 a      | % 5
    a a bes a      | % 6
    g2 r4 f      | % 7
    g f bes a      | % 8
    g2 f4 a      | % 9
    a a d c      | % 10
    bes2 a4 a      | % 11
    a a bes a      | % 12
    g g f ^
    
    \markup {
2. Wie ist die Welt so stille
und in der Dämmerung Hülle
so traulich und so hold
gleich einer stillen Kammer,
wo ihr des Tages Jammer
verschlafen und vergessen sollt.

3. Seht ihr den Mond dort stehen?
Er ist nur halb zu sehen
und ist doch rund und schön.
So sind wohl manche Sachen,
die wir getrost belachen,
weil unsre Augen sie nicht sehn.

4. Wir stolzen Menschenkinder
sind eitel arme Sünder
und wissen gar nicht viel.
Wir spinnen Luftgespinste
und suchen viele Künste
und kommen weiter von dem Ziel.

5. Gott, lass dein Heil uns schauen,
auf nichts Vergänglichs trauen,
nicht Eitelkeit uns freun;
lass uns einfältig werden
und vor dir hier auf Erden
wie Kinder fromm und fröhlich sein.

6. Wollst endlich sonder Grämen
aus dieser Welt uns nehmen
durch einen sanften Tod;
und wenn du uns genommen,
lass uns in’ Himmel kommen,
du unser Herr und unser Gott.

7.  So legt euch denn, ihr Brüder,
in Gottes Namen nieder;
kalt ist der Abendhauch.
Verschon uns, Gott, mit Strafen
und lass uns ruhig schlafen.
Und unsern kranken Nachbarn auch!} \bar "|."\bar "|." 
}% end of last bar in partorvoice

      ApartAverseA = \lyricmode { \set stanza = " 1. " Der Mond ist auf -- ge -- gang -- en,  die gold -- nen  Stern -- lein  pran -- gen  am Him -- mel  hell und klar. Der Wald steht schwarz und schwei -- get,  und aus den Wie -- sen  stei -- get  der wei -- ße  Ne -- bel  wun -- der -- bar.  }
theChords = \chordmode { 
    f2 f4 bes4 f4 c2 f1 bes4 f4 c2:7 f2 d2:m bes4 f4 c2. d2:m f4 bes4 f4 c2:7 f2 d2:m bes4 f4 c2:7 f2 d2:m g4:m f4 c2:7 f4 }%%end of chordlist 


\score { 
    << 
    \new ChordNames { \theChords } 
        \context Staff = ApartA << 
            \context Voice = AvoiceAA \AvoiceAA
        >>

         \context Lyrics = ApartAverseA\lyricsto AvoiceAA  \ApartAverseA



      \set Score.skipBars = ##t
      %%\set Score.melismaBusyProperties = #'()
      \override Score.BarNumber #'break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
      %% remove previous line to get barnumbers only at beginning of system.
       #(set-accidental-style 'modern-cautionary)
      \set Score.markFormatter = #format-mark-box-letters %%boxed rehearsal-marks
       \override Score.TimeSignature #'style = #'() %%makes timesigs always numerical
      %% remove previous line to get cut-time/alla breve or common time 
      \set Score.pedalSustainStyle = #'mixed 
       %% make spanners comprise the note it end on, so that there is no doubt that this note is included.
       \override Score.TrillSpanner #'(bound-details right padding) = #-2
      \override Score.TextSpanner #'(bound-details right padding) = #-1
      %% Lilypond's normal textspanners are too weak:  
      \override Score.TextSpanner #'dash-period = #1
      \override Score.TextSpanner #'dash-fraction = #0.5
      %% lilypond chordname font, like mscore jazzfont, is both far too big and extremely ugly (olagunde@start.no):
      \override Score.ChordName #'font-family = #'roman 
      \override Score.ChordName #'font-size =#0 
      %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
      \set Score.majorSevenSymbol = \markup {maj7}
  >>

  %% Boosey and Hawkes, and Peters, have barlines spanning all staff-groups in a score,
  %% Eulenburg and Philharmonia, like Lilypond, have no barlines between staffgroups.
  %% If you want the Eulenburg/Lilypond style, comment out the following line:
  \layout {\context {\Score \consists Span_bar_engraver}}
}%% end of score-block 

#(set-global-staff-size 20)
