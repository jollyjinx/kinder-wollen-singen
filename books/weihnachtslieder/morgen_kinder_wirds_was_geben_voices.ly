\version "2.24.2"
MKW_title = "Morgen, Kinder, wird's was geben"
MKW_poet = "Text: Martin Friedrich Philipp Bartsch (1795)"
MKW_composer = "Melodie: Carl Gottlieb Hering (1809)"
MKW_maintainerWeb = "http://www.petercrighton.de"
MKW_maintainerEmail = "PeteCrighton@googlemail.com"
MKW_arranger = "Peter Crighton"
MKW_copyright = "Public Domain"

MKW_akkorde = \chordmode {
  g2 c4 g c d g2 g e:m c4 g d2
  a:m c d b:m e:m f d:/fis g
}
MKW_melodie = \relative c' {
  \clef "treble"
  \time 4/4
  \key g\major
  \autoBeamOff
  \repeat volta 2 {
    g'4 d e d | e8( g) fis( a) g4 d |
    b' b8( c) d4 b | c b a2 |
  }
  c4 c e e | a, a d2 |
  g,4 g c c | b8( a) g( fis) g2 \bar "|."
}
MKW_text = \lyricmode {
  \set stanza = "1."
  Mor -- gen, Kin -- der, wird's was ge -- ben,
  mor -- gen wer -- den wir uns freun;
  Ein -- mal wer -- den wir noch wach,
  hei -- ßa, dann ist Weih -- nachts -- tag!
}
MKW_wdh = \lyricmode {
  welch ein Ju -- bel, welch ein Le -- ben
  wird in __ un -- serm Hau -- se sein!
}
MKW_Score = \score {
  <<
    \new ChordNames { \MKW_akkorde }
    \new Voice = "Lied" { \MKW_melodie }
    \new Lyrics \lyricsto "Lied" { \MKW_text }
    \new Lyrics \lyricsto "Lied" { \MKW_wdh }
  >>
}

MKW_Strophen = \markup {
  \hspace #0.1
  \column {
    \line {
      \bold "2."
      \column {
        "Wie wird dann die Stube glänzen"
        "von der großen Lichterzahl,"
        "schöner als bei frohen Tänzen"
        "ein geputzter Kronensaal!"
        "Wisst ihr noch vom vorgen Jahr,"
        "wie's am Weihnachtsabend war?"
      }
    }
    \hspace #0.1
    \line {
      \bold "4."
      \column {
        "Wisst ihr noch den großen Wagen"
        "und die schöne Jagd von Blei?"
        "Unsre Kleiderchen zum Tragen"
        "und die viele Näscherei?"
        "Meinen fleißgen Sägemann"
        "mit der Kugel unten dran?"
      }
    }
  }
  \hspace #0.1
  \column {
    \line {
      \bold "3."
      \column {
        "Wisst ihr noch mein Reiterpferdchen,"
        "Malchens nette Schäferin?"
        "Jettchens Küche mit dem Herdchen"
        "und dem blank geputzten Zinn?"
        "Heinrichs bunten Harlekin"
        "mit der gelben Violin?"
      }
    }
    \hspace #0.1
    \line {
      \bold "5."
      \column {
        "Welch ein schöner Tag ist morgen,"
        "viele Freuden hoffen wir!"
        "Unsre lieben Eltern sorgen"
        "lange, lange schon dafür."
        "O gewiss, wer sie nicht ehrt,"
        "ist der ganzen Lust nicht wert!"
      }
    }
  }
  \hspace #0.1
}
