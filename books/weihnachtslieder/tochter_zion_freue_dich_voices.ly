\version "2.24.2"

TZF_title = "Tochter Zion, freue dich"
TZF_composer = "Melodie: G. F. Händel, 1747"
TZF_poet = "Text: F. H. Ranke, 1823"
TZF_arranger = "Gesetzt für kinder-wollen-singen.de"
TZF_copyright = "Public Domain"

TZF_AvoiceAA = \relative c'{
  \set Staff.instrumentName = #""
  \set Staff.shortInstrumentName = #""
  \clef treble
  %staffkeysig
  \key es \major
  %barkeysig:
  \key es \major
  %bartimesig:
  \time 2/2
  bes'2 g4.( aes8)      | % 1
  bes2 ees,      | % 2
  f8( g aes bes aes4) g      | % 3
  f1      | % 4
  g8( aes bes c) bes4 bes      | % 5
  ees2 bes      | % 6
  aes4( g f4.) ees8      | % 7
  ees1 ^\markup {\upright \bold  "fine"} \bar "|."     | % 8
  g8( f g aes g4) g      | % 9
  f2 ees      | % 10
  aes4( g f) ees      | % 11
  d1      | % 12
  ees8( d ees f ees4) ees      | % 13
  c'2 a      | % 14
  bes4( c8 bes a4.) bes8      | % 15
  bes1 ^\markup {\upright \bold  "d. c. al fine"} \bar "|."
}% end of last bar in partorvoice

TZF_ApartAverseA = \lyricmode { \set stanza = " 1. " Toch  ter Zi -- on freu -- e Dich, ja- uch ze laut, Je -- ru -- sa -- lem Sieh, dein Kö nig kommt zu dir, ja er kommt, der Frie -- de fürst }

TZF_Score = \score {
  <<
    \context Staff = ApartA <<
      \context Voice = AvoiceAA \TZF_AvoiceAA
    >>

    \context Lyrics = ApartAverseA\lyricsto AvoiceAA  \TZF_ApartAverseA
    %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
    \set Score.majorSevenSymbol = \markup {maj7}
  >>
}

TZF_Strophen = \markup {
  \bold "2."
  \column {
    "Hosianna, Davids Sohn, sei gesegnet deinem Volk!"
    "Gründe nun dein ewges Reich, Hosianna in der Höh!"
    "Hosianna, Davids Sohn, sei gesegnet deinem Volk!"
  }
}
\markup {
  \bold "3."
  \column {
    "Hosianna, Davids Sohn, sei gegrüßet, König mild!"
    "Ewig steht dein Friedensthron, du des ewgen Vaters Kind."
    "Hosianna, Davids Sohn, sei gegrüßet, König mild!"
  }
}
