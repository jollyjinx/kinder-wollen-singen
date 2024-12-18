\version "2.24.2"

EIE_title = "Es ist ein Ros entsprungen"
EIE_composer = "volkstümlich"
EIE_poet = "volkstümlich / Michael Praetorius / Friedrich Layriz"
EIE_arranger = "Satz: Christian Schramm"
EIE_copyright = "Public Domain"

EIE_global = {
  \key f \major
  \time 4/4
}

EIE_melody = \relative c'' {
  \EIE_global
  \partial 2
  c2
  c4 c d c
  c2 a
  bes a4 g~
  g f2 e4
  f2 \breathe c'

  c4 c d c
  c2 a
  bes a4 g~
  g f2 e4
  f2 r4 a

  g4 e f d
  c2 r4 c'
  c c d c
  c2 a
  bes a4 g~
  g f2 e4
  f2\fermata
  \bar "|."

}


EIE_chordNames = \chordmode {
  \set chordChanges = ##t
  \EIE_global
  \germanChords
  f2~
  f2 bes4 f
  c2 d:m
  bes2 f4 c
  bes2 c4:sus4 c
  f1

  f2 bes4 f
  c2 d:m
  bes f4 c
  bes2 c4:sus4 c
  f1

  g4:m a:m f g
  c1
  c4 f bes f
  c2 d:m
  g2:m f4 g:m
  bes2 c4:sus4 c
  f2

}


EIE_verseOne = \lyricmode {
  \set stanza = "1. "Es ist ein Ros ent -- sprun -- gen
  aus ei -- ner Wur -- zel zart,
  wie uns die Al -- ten sun -- gen,
  von Jes -- se kam die Art
  und hat ein Blüm -- lein bracht
  mit -- ten im kal -- ten Win -- ter,
  wohl zu der hal -- ben Nacht.
}


EIE_Score = \score {
  <<
    \new ChordNames \EIE_chordNames
    \new Staff { \EIE_melody }
    \addlyrics { \EIE_verseOne }
  >>
  \layout { }
}

EIE_Strophen = \markup {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "2."
        \column {
          "Das Röslein, das ich meine, davon Jesaia sagt,"
          "hat uns gebracht alleine Marie die reine Magd."
          "Aus Gottes ewgem Rat"
          "hat sie ein Kind geboren wohl zu der halben Nacht."
        }
      }
    }
    \hspace #0.1
    \column {
      \line {
        \bold "3."
        \column {
          "Das Blümelein so kleine, das duftet uns so süß,"
          "mit seinem hellen Scheine vertreibt's die Finsternis:"
          "Wahr' Mensch und wahrer Gott,"
          "hilft uns aus allem Leide, rettet von Sünd und Tod."
        }
      }
    }
    \hspace #0.1
  }
}

