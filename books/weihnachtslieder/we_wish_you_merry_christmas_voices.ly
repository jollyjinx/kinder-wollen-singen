\version "2.24.2"

WWY_title = "We Wish You A Merry Christmas"
WWY_composer = "Traditional aus England"
WWY_arranger = "Gesetzt für kinder-wollen-singen.de"
WWY_copyright = "Public Domain"


WWY_AvoiceAA = \relative c' {
  \set Staff.instrumentName = #""
  \set Staff.shortInstrumentName = #""
  \clef treble
  %staffkeysig
  \key d \major
  \time 3/4
  \partial 4
  a'4     d d8 e d cis      | % 1
  b4 b b      | % 2
  e e8 fis e d      | % 3
  cis4 a a      | % 4
  fis' ^\markup {\upright  "Fis"} fis8 g fis e      | % 5
  d4 ^\markup {\upright  "h"} b a8 a      | % 6
  b4 e cis      | % 7
  d2
  a4 ^\markup {\upright  "Fine"}      | % 7
  d d d      | % 8
  cis2 cis4
  \bar "||"     | % 9
  d4 ^\markup {\upright  "h"} cis b      | % 10
  a2 e'4      | % 11
  fis e8 e d d      | % 12
  a'4 ^\markup {\upright  "Fis"}
  a a8 a      | % 13
  b4 e cis      | % 14
  d2 \bar "|."
}% end of last bar in partorvoice

WWY_ApartAverseA = \lyricmode {
  \set stanza = " 1. "
  We wish you a mer -- ry  Christ -- mas,
  we wish you a mer -- ry  Christ -- mas,
  we wish you a mer -- ry  Christ -- mas
  and a hap -- py  New Year!
  Good ti -- dings  we bring,
  to you and your kin.
  We wish you a mer -- ry  Christ -- mas
  and a hap -- py  New Year!
}

WWY_theChords = \chordmode {
  s4             d2. g2. e2. a4 g2 a4:7 d1. a1*5/4 e4:7 a2. d1. g2 a4:7 d4
}%%end of chordlist

WWY_akkorde = \chordmode {
  s4 d2. g e a fis b:m g2 a4:7 d2. d a b2:m e4:7 a2. d fis:m g2 a4:7 d2
}

WWY_Score = \score {
  <<
    \new ChordNames { \WWY_theChords }
    \context Staff = ApartA <<
      \context Voice = AvoiceAA \WWY_AvoiceAA
    >>

    \context Lyrics = ApartAverseA\lyricsto AvoiceAA  \WWY_ApartAverseA

    \set Score.skipBars = ##t
    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    #(set-accidental-style 'modern-cautionary)
    \set Score.markFormatter = #format-mark-box-letters
    \override Score.TimeSignature.style = #'()
    \set Score.pedalSustainStyle = #'mixed
    \override Score.TrillSpanner.bound-details.right.padding = #-2
    \override Score.TextSpanner.bound-details.right.padding = #-1
    \override Score.TextSpanner.dash-period = #1
    \override Score.TextSpanner.dash-fraction = #0.5
    \override Score.ChordName.font-family = #'roman
    \override Score.ChordName.font-size = #0
    \set Score.majorSevenSymbol = \markup {maj7}
  >>
}

WWY_Strophen = \markup {
  \hspace #0.1
  \column {
    \line {
      \bold "2."
      \column {
        "Now bring us some figgy pudding,"
        "Now bring us some figgy pudding,"
        "Now bring us some figgy pudding,"
        "And bring some out here!"
        "Good tidings we bring"
        "To you and your kin."
        "We wish you a merry Christmas "
        "And a happy New Year!"
      }
    }
    \hspace #0.1
    \line {
      \bold "4."
      \column {
        "And we won't go until we get some"
        "And we won't go until we get some"
        "And we  won't go until we get some"
        "So bring some out here!"
        "Glad tidings we bring"
        "To you and your kin;"
        "We wish you a merry Christmas"
        "And a happy New Year!"
      }
    }
  }
  \hspace #0.1
  \column {
    \line {
      \bold "3."
      \column {
        "For we all like figgy pudding"
        "For we all like figgy pudding"
        "For we all like figgy pudding"
        "Please bring it right here!"
        "Glad tidings we bring"
        "To you and your kin;"
        "We wish you a merry Christmas"
        "And a happy New Year!"
      }
    }
    \hspace #0.1
    \line {
      \bold "5."
      \column {
        "We wish you a Merry Christmas"
        "We wish you a Merry Christmas"
        "We wish you a Merry Christmas"
        "And a happy New Year."
      }
    }
  }
  \hspace #0.1
}
