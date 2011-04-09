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
    title = "Komm lieber Mai"
    composer = "Wolfgang Amadeus Mozart (1791)"
    poet = "Christian Adolf Overbeck (1775)"
    copyright = "Gemeinfrei 
Darf beliebig kopiert und weitergegeben werden!

Gesetzt für http://www.kinder-wollen-singen.de
"
    }

AvoiceAA = \relative c'{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key d \major 
    %barkeysig: 
    \key d \major 
    %bartimesig: 
    \time 6/8 
    \partial 8
    d8     d4 fis8 a4 d8      | % 1
    a4. fis4 d8      | % 2
    g4 g8 g a g      | % 3
    fis4. r4      | % 4
    d8      | % 5
    d4 fis8 a4 d8      | % 6
    a4. fis4 d8      | % 7
    e4 e8 e fis e      | % 8
    d4. r4      | % 8
    fis8      | % 9
    g4 fis8 e fis g      | % 10
    a4. fis8 r d'      | % 11
    d cis b b a gis      | % 12
    a4. r4      | % 12
    d,8      | % 13
    d4 ^\markup {\upright  "2.Zwar Wintertage haben
wohl auch der Freuden viel:
man kann im Schnee eins traben
und treibt manch' Abendspiel,
baut Häuserchen von Karten,
spielt Blindekuh und Pfand:
Auch gibt's wohl Schlittenfahrten
auf's liebe freie Land. "} ^\markup {\upright  "5. Ach, wenn's doch erst gelinder
und grüner draußen wär'!
Komm, lieber Mai! Wir Kinder,
wir bitten gar zu sehr!
O komm und bring vor allem
uns viele Veilchen mit,
bring auch viel Nachtigallen
und schöne Kuckucks mit."} fis8 ^\markup {\upright  "3. Doch wenn die Vöglein singen
und wir dann froh und flink
auf grünem Rasen  springen,
das ist ein alter Ding!
Jetzt muss mein Steckenpferdchen
dort in dem Winkel steh'n,
denn draußen in dem Gärtchen
kann man vor Schmutz kaum geh'n. "} a4 ^\markup {\upright  "4. Am meisten aber dauert
mich Lottchens Herzeleid:
Das arme Mädchen lauert
recht auf die Blumenzeit;
umsonst hol' ich ihr Spielchen
zum Zeitvertreib herbei;
sie sitzt auf ihrem Stühlchen
wie's Hühnchen auf dem Ei."} d8 ^\markup {\upright  ""}      | % 14
    d4 b8 g4 b8 ^\markup {\upright  "Akkordfolge in C-Dur:

|| C   | C  | G7        | C 
----------------------------------------------------------------------
| C    | C  | G    G7 | C
----------------------------------------------------------------------
| G7  | C  | Am D7 | G
----------------------------------------------------------------------
| C    | F   | C    G7 | C ||"}      | % 15
    a b a g fis e      | % 16
    d4. ^\markup {\upright  ""} ^\markup {\upright  "2. Zwar Wintertage haben
wohl auch der Freuden viel:
man kann im Schnee eins traben
und treibt manch' Abendspiel,
baut Häuserchen von Karten,
spielt Blindekuh und Pfand:
Auch gibt's wohl Schlittenfahrten
auf's liebe freie Land. "} ^\markup {\upright  "Akkordfolge in F-Dur:

|| F   | F    | C7         | F 
-----------------------------------------------------------------------
| F    | F    | C     C7 | F
-----------------------------------------------------------------------
| C7  | F    | Dm G7 | C
-----------------------------------------------------------------------
| F    | Bb  | C     G7 | C ||"} r4 \bar "|." 
}% end of last bar in partorvoice

      ApartAverseA = \lyricmode { \set stanza = " 1. " Komm, lie -- ber Mai, und ma -- che die Bäu -- me wie   _ -_der grün, und lass uns an dem Ba -- che die klei -- nen Veil  _ -_chen blüh'n! Wie möch -- ten wir  _ so ger -- ne ein Veil  _ -_chen wie  _ -_der seh'n, ach, lie -- ber Mai, wie ger  _ -_ne ein -- mal  _ spa -- zie  _ -_ren geh'n. }
theChords = \chordmode { 
                    s8             d1. a2.:7 d2. d1. a4. a4.:7 d2. a2.:7 d2. b4.:m e4.:7 a2. d2. g2. d4. a4.:7 d4 }%%end of chordlist 


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
