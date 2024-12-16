\version "2.24.2"
\include "deutsch.ly"

% Define variables for header values
AJW_Title = "Alle Jahre wieder"
AJW_Poet = "Text: Wilhelm Hey (1789–1854)"
AJW_Composer = "Musik: Friedrich Silcher (1789–1860)"
AJW_Arranger = "Satz: Sebastian Werk"
AJW_Copyright = "Public Domain"

% Other declarations
AJW_XaGlobal = {
  \tempo 4 = 144
  \key d \major
}


AJW_XaTextStropheEins = \lyricmode {
  \set stanza = #"1. "
  Al- le Jah- re wie- der
  kommt das Chris- tus- kind.
  Auf die Er- de nie- der,
  wo wir Men- schen sind.
}

AJW_XaMelodie = \relative c'' {
  a4. h8 a4 g | fis2 e | d4 e8( fis) g4 fis | e2. r4 | fis4 a h a | d2 cis4( h) | a g8( fis) g4 a | fis2. r4 \bar "|."
}

AJW_XaGesang =
\new ChoirStaff {
  <<
    \new Staff {
      \AJW_XaGlobal \key d \major <<
        \new Voice = "melodie" {\AJW_XaMelodie}
        \new Lyrics \lyricsto "melodie" {\AJW_XaTextStropheEins}
      >>
    }
  >>
}

AJW_XaStrophen =
\markup {
  \fill-line {
    \hspace #0.1 \column {
      \line {
        \bold "2." \column {
          "Kehrt mit seinem Segen"
          "ein in jedes Haus,"
          "geht auf allen Wegen"
          "mit uns ein und aus."
        }
      }
    }
    \hspace #0.1 \column {
      \line {
        \bold "3." \column {
          "Steht auch mir zur Seite"
          "still und unerkannt,"
          "daß es treu mich leite"
          "an der lieben Hand."
        }
      }
    }
    \hspace #0.1 \column {
      \line {
        \bold "4." \column {
          "Sagt den Menschen allen,"
          "daß ein Vater ist,"
          "dem sie wohlgefallen,"
          "der sie nicht vergisst."
        }
      }
    }
    \hspace #0.1
  }
}
AJW_Xa = \score {
  <<
    \AJW_XaGesang
  >>
  \layout{}
}