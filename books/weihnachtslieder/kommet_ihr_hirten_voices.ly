\version "2.24.2"
KIH_title = "Kommet, ihr Hirten"
KIH_poet = "Text: Karl Riedel (1870)"
KIH_composer = "Melodie: Olmütz (1847)"
KIH_arranger = "Peter Crighton"
KIH_maintainerEmail = "PeteCrighton@googlemail.com"
KIH_maintainerWeb = "http://www.petercrighton.de"
KIH_copyright = "Public Domain"


KIH_akkorde = \chordmode {
  f2 bes4 f2 bes4 f2 c4 f2. f1*5/4 c4 f1*5/4 c4 f2 c4 f2.
}
KIH_melodie = \relative c' {
  \clef "treble"
  \time 3/4
  \key f\major
  \autoBeamOff
  \repeat volta 2 {
    c'4 c8( a) d( bes) | c4 c8( a) d( bes) |
    c4 a8( c) g( a) | f2.
  }
  \break
  f4 a8 f a c | f,4 a8 f g c, |
  f4 a8 f a c | f,4 a8 f g c, |
  c'4 a8( c) g( a) | f2. \bar "|."
}
KIH_text = \lyricmode {
  \set stanza = "1."
  Kom -- met, ihr Hir -- ten, ihr Män -- ner und Fraun,
  Chris -- tus, der Herr, ist heu -- te ge -- bo -- ren,
  den Gott zum Hei -- land euch hat er -- ko -- ren.
  Fürch -- tet __ euch nicht!
}
KIH_wdh = \lyricmode {
  kom -- met, das lieb -- li -- che Kind -- lein zu __ schaun,
}
KIH_Score = \score {
  <<
    \new ChordNames { \KIH_akkorde }
    \new Voice = "Lied" { \KIH_melodie }
    \new Lyrics \lyricsto "Lied" { \KIH_text }
    \new Lyrics \lyricsto "Lied" { \KIH_wdh }
  >>
}
KIH_Strophen = \markup {
  \column {
    \line {
      \bold "2."
      \column {
        "Lasset uns sehen in Bethlehems Stall,"
        "was uns verheißen der himmlische Schall;"
        "was wir dort finden, lasset uns künden,"
        "lasset uns preisen in frommen Weisen."
        "Halleluja!"
      }
      \bold "3."
      \column {
        "Wahrlich, die Engel verkündigen heut"
        "Bethlehems Hirtenvolk gar große Freud:"
        "Nun soll es werden Friede auf Erden,"
        "den Menschen allen ein Wohlgefallen."
        "Ehre sei Gott!"
      }
    }
  }
}
