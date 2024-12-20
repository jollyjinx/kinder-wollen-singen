\version "2.24.2"

SNH_maintainerWeb = "http://www.petercrighton.de"
SNH_maintainerEmail = "PeteCrighton@googlemail.com"
SNH_title = "Stille Nacht, heilige Nacht"
SNH_poet = "Text: Joseph Mohr (1816)"
SNH_composer = "Melodie: Franz Xaver Gruber (1818)"
SNH_arranger = "Peter Crighton"
SNH_copyright = "Public Domain"

SNH_akkorde = \chordmode {
  d1. a2.:7 d  g d g d a:7 d d4. a:7 d2.
}
SNH_melodie = \relative c' {
  \clef "treble"
  \time 6/8
  \key d\major
  a'8.( b16) a8 fis4. | a8. b16 a8 fis4. |
  e'4 e8 cis4. | d4 d8 a4. |
  b4 b8 \slurDashed d8.( cis16) b8 | a8.( b16) a8 fis4. |
  b4 b8 d8.( cis16) b8 | a8.( b16) a8 fis4. |
  cis'4 cis8 e8. d16 cis8 | \slurSolid d4.( fis4.) |
  d8.( a16) fis8 a8. g16 e8 | d4. (d4) r8 \bar "|."
}
SNH_text = \lyricmode {
  \set stanza = "1."
  Stil -- le Nacht, hei -- li -- ge Nacht!
  Al -- les schläft, ein -- sam wacht
  \set ignoreMelismata = ##t nur das trau -- te, hoch -- hei -- li -- ge Paar.
  Hol -- der Kna -- be im lock -- i -- gen Haar,
  \unset ignoreMelismata schlaf in himm -- li -- scher Ruh,
  schlaf -- in himm -- li -- scher Ruh.
}
SNH_Score = \score {
  <<
    \new ChordNames { \SNH_akkorde }
    \new Voice = "Lied" { \SNH_melodie }
    \new Lyrics \lyricsto "Lied" { \SNH_text }
  >>
}
SNH_Strophen = \markup {
  \column {
    \line {
      \bold "2."
      \column {
        "Stille Nacht, heilige Nacht!"
        "Gottes Sohn, o wie lacht"
        "Lieb aus deinem göttlichen Mund"
        "Da uns schlägt die rettende Stund,"
        "Christ, in deiner Geburt,"
        "Christ, in deiner Geburt."
      }
      \bold "3."
      \column {
        "Stille Nacht, heilige Nacht!"
        "Hirten erst kundgemacht,"
        "Durch der Engel Halleluja."
        "Tönt es laut von fern und nah:"
        "Christ, der Retter ist da,"
        "Christ, der Retter ist da."
      }
    }
  }
}
