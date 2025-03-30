\version "2.24.2"

DCI_date = "19th century"
DCI_source = "Das Buch der Weihnachtslieder. Bremen, 1896"
DCI_style = "Chanson"
DCI_maintainer = "David Herrmann"
DCI_maintainerEmail = "hedavid@arcor.de"
DCI_title = "Der Christbaum ist der schönste Baum"
DCI_poet = "Norddeutsches Volkslied"
DCI_composer = "Volksweise"
DCI_arranger = "Satz: David Herrmann, basierend auf „Das Buch der Weihnachtslieder“, 1896"
DCI_copyright = "Public Domain"


DCI_verseeins= \lyricmode {
  \set stanza = #"1."
  Der Christbaum2 ist4 der4 schön -- ste Baum,
  den wir auf Er -- den ken -- nen; ___
  Im Gar -- ten klein, im eng -- sten Raum,
  wie lieb -- lich blüht der Wun -- der -- baum,
  wenn sei -- ne Blümchen2 bren2 -- nen,4
  wenn sei -- ne Blümchen2 bren2 -- nen,4 ja bren1 -- nen.
}


DCI_upper = \relative c' {
  \slurDown
  \clef "treble"
  \key g\major
  \override Staff.TimeSignature.style = #'numbered
  \time 4/4
  \partial 4
  << {d4} \\ {d4}>>
  << {b'4 d, c' d,} \\ {g4 d fis d} >>
  << {d'4. c8 b4 a4} \\ {g4. g8 g4 fis4} >>
  << {g4 d4 c'4 b4} \\ {d,4 d4 fis4 g4} >>
  << {b4 a4} \\ {g4 fis4} >> r4 << {d'4} \\ {fis,4} >>
  << {d'4 b4 e4. d8} \\ {g,4 g g4. g8} >>
  << {d'8 c8 c8 b8 c4 a4 } \\ {fis4 fis4 fis4 fis4} >>
  << {c'4 a4 d4. c8} \\ {fis,4 fis a fis} >>
  << {c'8 b8 b8 a8 b4 d,4} \\ {g4 fis4 g d} >>
  << {e4 fis g a} \\ {c,4 c b e} >>
  << {b'2 g4 fis4} \\ {dis2 e4 dis4} >>
  << {g4 a b c} \\ {e, fis g g} >>
  << {d'2 b4 e4} \\ {a,2 g4 g4} >>
  << {d'2 (c2)} \\ {g2. (fis4)} >>
  << {b2} \\ {g2} >> r4
  \bar "|."
}


DCI_lower = \relative c {
  \clef "bass"
  \key g\major
  \override Staff.TimeSignature.style = #'numbered
  \time 4/4
  \partial 4
  << {b'4} \\ {g} >>
  << {d b c c} \\ {g g a a} >>
  << {b4. e8 d4 d8 c8} \\ {b4. c8 fis,4 c4} >>
  << {b' b c d} \\ {g, b a g} >>
  << {d' d} \\ {d c,} >> r4 << {d'} \\ {c} >>
  << {d d c4. d8} \\ {b4 g c4. b8} >>
  << {d4 d d d} \\ {a4 d, a' d,} >>
  << {d' d d d} \\ {a d, fis d} >>
  << {d' d d a} \\ {g d g b,} >>
  << {g' a g e} \\ {c a e' c} >>
  << {fis (b) b b} \\ {b,2 e4 b4} >>
  << {b' dis dis e} \\ {e, dis g e} >>
  << {d'2 d4 c} \\ {fis,2 g4 c,} >>
  << {b'2 a4 (d)} \\ {d,1} >>
  << {d'2} \\ {g,2} >> r4
  \bar "|."
}

DCI_Score = \score{
  \context ChoirStaff {
    <<
      \new Staff { \DCI_upper }
      \new Lyrics {\DCI_verseeins }
      \new Staff { \DCI_lower }
    >>
  }

  \layout{
    \context{
      \Voice
    }
    \context{
      \Staff
    }
  }
}
DCI_Strophen = \markup {
  \hspace #0.1
  \column {
    \line {
      \bold "2."
      \column {
        "Dann sieh, in dieser Wundernacht"
        "ist einst der Herr geboren"
        "der Heiland, der uns selig macht"
        "hätt er den Himmel nicht gebracht"
        "|: wär alle Welt verloren, :|"
        "verloren."
      }
    }
    \hspace #0.1
    \line {
      \bold "3."
      \column {
        "Doch nun ist Freud und Seligkeit"
        "ist jede Nacht voll Kerzen"
        "Auch dir, mein Kind, ist das bereit"
        "dein Jesus schenkt dir alles heut"
        "|: gern wohl es dir im Herzen, :|"
        "im Herzen"
      }
    }
  }
  \hspace #0.1
  \column {
    \line {
      \bold "4."
      \column {
        "O laß ihn ein, es ist kein Traum"
        "Er wählt dein Herz zum Garten"
        "will pflanzen in den engen Raum"
        "den allerschönsten Wunderbaum"
        "|: und seiner treulich warten, :|"
        "ja warten"
      }
    }
  }
  \hspace #0.1
}
