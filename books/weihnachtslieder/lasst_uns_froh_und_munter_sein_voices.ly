\version "2.24.2"
LUF_title ="Lasst uns froh und munter sein"
LUF_poet ="Text: Aus dem Hunsrück (19. Jh.), Autor unbekannt"
LUF_composer = "Musik: unbekannter Komponist"
LUF_arranger ="David Herrmann"
LUF_copyright ="Public Domain"


LUF_verseI= \lyricmode {
  \set stanza = #"1."
  Lasst uns froh _  und _ mun -- ter sein
  und uns recht _ von _ Her -- zen freu'n!
  Lus -- tig, lus -- tig, tra -- la -- la -- la -- la,
  bald ist Nik - laus - a -- bend da,
  bald ist Nik - laus - a -- bend da!
}


LUF_staffVoice = \new Staff {
  \numericTimeSignature
  \time 4/4
  %\set Staff.instrumentName = "Voice"
  \set Staff.midiInstrument = "voice oohs"
  \key d \major
  \clef treble

  \relative c' {
    \context Voice = "melodyVoi" {
      \dynamicUp
      % Type notes here
      %\autoBeamOff
      \tempo 4 = 100
      a'4 a4 a8 b8 a8 g8
      fis4 fis4 fis4 r4
      \break
      g4 g4 g8 a8 g8 fis8
      e4 e4 e4 r4
      \break
      d4 e4 fis4 g4
      a8. b16 a8 b8 a2
      \break
      d4 a4 a8 b8 a8 g8
      fis4 e4 a2
      \break
      d4 a4 a8 b8 a8 g8
      fis4 e4 d2
    }
  }

}


LUF_harmonies = \new ChordNames \chordmode {
  % todo
}

LUF_Score = \score {
  <<
    \LUF_harmonies
    \LUF_staffVoice
    \context Lyrics = "lmelodyVoiLI" \lyricmode { \lyricsto "melodyVoi" \LUF_verseI }

  >>
}
LUF_Strophen = \markup {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "2."
        \column {
          "Dann stell ich den Teller raus,"
          "Niklaus legt gewiss was drauf."
          \bold "Refrain:" "Lustig, lustig ..."
        }
      }
      \hspace #0.1
      \line {
        \bold "3."
        \column {
          "Wenn ich schlaf, dann träume ich:"
          "Jetzt bringt Niklaus was für mich."
          \bold "Refrain:" "Lustig, lustig ..."
        }
      }
    }
    \hspace #0.1
    \column {
      \line {
        \bold "4."
        \column {
          "Wenn ich aufgestanden bin,"
          "lauf ich schnell zum Teller hin."
          \bold "Refrain:" "Lustig, lustig ..."
        }
      }
      \hspace #0.1
      \line {
        \bold "5."
        \column {
          "Niklaus ist ein guter Mann,"
          "dem man nicht genug danken kann."
          \bold "Refrain:" "Lustig, lustig ..."
        }
      }
    }
    \hspace #0.1
  }
}
