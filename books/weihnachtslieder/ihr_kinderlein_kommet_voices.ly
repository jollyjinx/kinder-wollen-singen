\version "2.24.2"
IKK_title = "Ihr Kinderlein, kommet"
IKK_poet = "Text: Christoph von Schmid (1798)"
IKK_composer = "Melodie: Johann Abraham Peter Schulz (1794)"
IKK_arranger = "Satz: Peter Crighton"
IKK_maintainerEmail = "PeteCrighton@googlemail.com"
IKK_maintainerWeb = "http://www.petercrighton.de"
IKK_copyright = "Public Domain"

\header {
  title = \IKK_title
  poet = \IKK_poet
  composer = \IKK_composer
  arranger = \IKK_arranger
  maintainerEmail = \IKK_maintainerEmail
  maintainerWeb = \IKK_maintainerWeb
  copyright = \IKK_copyright
}

IKK_akkorde = \chordmode {
  r8 d1 a2:7 d a a:7 d g a d a:7 d4.
}
IKK_melodie = \relative c' {
  \clef "treble"
  \time 2/4
  \key d\major
  \partial 8
  \repeat volta 2 {
    a'8 | a4 fis8 a | a4 fis8 a |
    g4 e8 g | fis4 r8
  }
  \break
  fis8 | e4 e8 e | g4 g8 g |
  fis4 fis8 fis | b4 r8 b8 |
  \break
  a4 a8 a | d4 a8 fis |
  g4 e8 cis | d4. \bar "|."
}
IKK_text = \lyricmode {
  \set stanza = "1."
  Ihr Kin -- der -- lein kom -- met, o kom -- met doch all,
  und seht, was in die -- ser hoch -- hei -- li -- gen Nacht
  der Va -- ter im Him -- mel für Freu -- de uns macht.
}
IKK_wdh = \lyricmode {
  zur Krip -- pe her kom -- met, in Beth -- le -- hems Stall,
}
IKK_Score = \score {
  <<
    \new ChordNames { \IKK_akkorde }
    \new Voice = "Lied" { \IKK_melodie }
    \new Lyrics \lyricsto "Lied" { \IKK_text }
    \new Lyrics \lyricsto "Lied" { \IKK_wdh }
  >>
}
IKK_Strophen = \markup {
  \column {
    \line {
      \bold "2."
      \column {
        "O seht in der Krippe im nächtlichen Stall,"
        "seht hier bei des Lichtleins hellglänzendem Strahl"
        "in reinlichen Windeln das himmlische Kind,"
        "viel schöner und holder, als Engel es sind."
      }
    }
    \hspace #0.1
    \line {
      \bold "3."
      \column {
        "Da liegt es, das Kindlein, auf Heu und auf Stroh,"
        "Maria und Joseph betrachten es froh,"
        "die redlichen Hirten knien betend davor,"
        "hoch oben schwebt jubelnd der Engelein Chor."
      }
    }
    \hspace #0.1
    \line {
      \bold "4."
      \column {
        "O beugt wie die Hirten anbetend die Knie,"
        "erhebet die Hände und danket wie sie;"
        "stimmt freudig, ihr Kinder, – wer wollt sich nicht freun? –"
        "stimmt freudig zum Jubel der Engel mit ein."
      }
    }
    \hspace #0.1
    \line {
      \bold "5."
      \column {
        "O betet: Du liebes, du göttliches Kind,"
        "was leidest du alles für unsere Sünd!"
        "Ach hier in der Krippe schon Armut und Not,"
        "am Kreuze dort gar noch den bitteren Tod."
      }
    }
    \hspace #0.1
    \line {
      \bold "6."
      \column {
        "So nimm unsre Herzen zum Opfer denn hin;"
        "wir geben sie gerne mit fröhlichem Sinn."
        "Ach mache sie heilig und selig wie deins"
        "und mach sie auf ewig mit deinem nur eins."
      }
    }
  }
}
