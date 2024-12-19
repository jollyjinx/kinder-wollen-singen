\version "2.24.2"
LRS_title = "Leise rieselt der Schnee"
LRS_poet = "Text: Eduard Ebel (1895)"
LRS_composer = "Melodie: Eduard Ebel (um 1900)"
LRS_arranger = "Peter Crighton"
LRS_maintainerEmail = "PeteCrighton@googlemail.com"
LRS_maintainerWeb = "http://www.petercrighton.de"
LRS_copyright = "Public Domain"

LRS_akkorde = \chordmode {
  f4. c f2. bes f c4. c:7 d2.:m g4.:m c f2.
}
LRS_melodie = \relative c' {
  \clef "treble"
  \time 6/8
  \key f\major
  a'4 a8 g a g | f4.~ f4 r8 |
  f4 d8 f e d | c4.~ c4 r8 |
  g'8 fis g bes a g | f4.~ f4 r8 |
  g8. d16 d8 e d e | f4.~ f4 r8 \bar "|."
}
LRS_text = \lyricmode {
  \set stanza = "1."
  Lei -- se rie -- selt der Schnee,
  still und starr liegt der See, __
  weih -- nacht -- lich glän -- zet der Wald: __
  Freu -- e dich, Christ -- kind kommt bald. __
}
LRS_Score = \score {
  <<
    \new ChordNames { \LRS_akkorde }
    \new Voice = "Lied" { \LRS_melodie }
    \new Lyrics \lyricsto "Lied" { \LRS_text }
  >>
}
LRS_Strophen = \markup {
  \column {
    \line {
      \bold "2."
      \column {
        "In den Herzen ist's warm,"
        "still schweigt Kummer und Harm,"
        "Sorge des Lebens verhallt:"
        "Freue dich, Christkind kommt bald!"
      }
      \bold "3."
      \column {
        "Bald ist heilige Nacht;"
        "Chor der Engel erwacht;"
        "Horch nur, wie lieblich es schallt:"
        "Freue dich, Christkind kommt bald!"
      }
    }
  }
}
