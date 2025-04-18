\version "2.24.2"

JIB_title = "Jingle Bells"
JIB_subtitle = "Or the one horse open sleigh"
JIB_composer = "James Pierpont"
JIB_arranger = "Gesetzt für kinder-wollen-singen.de"

JIB_AvoiceAA = \relative c'{
  \set Staff.instrumentName = #""
  \set Staff.shortInstrumentName = #""
  \clef treble
  %staffkeysig
  \key g \major
  %barkeysig:
  \key g \major
  %bartimesig:
  \time 2/4
  d8 b' a g      | % 1
  d4. d16 d      | % 2
  d8 b' a g      | % 3
  e2      | % 4
  e8 c' b a      | % 5
  fis2      | % 6
  d'8 d c a      | % 7
  b2      | % 8
  d,8 b' a g      | % 9
  d2      | % 10
  d8 b' a g      | % 11
  e4. e8      | % 12
  e c' b a      | % 13
  d d d d      | % 14
  e d c a      | % 15
  g4 r      | % 16
  b8 b b4      | % 17
  b8 b b4      | % 18
  b8 d g,8. a16      | % 19
  b2      | % 20
  c8 c c8. c16      | % 21
  c8 b b b16 b      | % 22
  b8 a a b      | % 23
  a4( d)      | % 24
  b8 b b4      | % 25
  b8 b b4      | % 26
  b8 d g,8. a16      | % 27
  b2      | % 28
  c8  c c8. c16      | % 29
  c8 b b b16 b      | % 30
  d8 d c a      | % 31
  g2 \bar "|."\bar "|."
}% end of last bar in partorvoice

JIB_ApartAverseA = \lyricmode { \set stanza = " 1. " Dash -- ing  through the snow, In a one horse op -- en  sleigh, O'er the fields we go, Laugh -- ing  all the way; Bells on bob -- tail  ring, Mak -- ing  spir -- its  bright, What fun it is to laugh and sing A sleigh -- ing  song to -- night.  Jin -- gle  bells, jin -- gle  bells, Jin -- gle  all the way; Oh what fun it is to ride In a one horse op -- en  sleight, Jin -- gle  bells, jin -- gle  bells, Jin -- gle  all the way, Oh what fun it is to ride In a one horse op -- en  sleigh. }

JIB_Score = \score {
  <<
    \context Staff = ApartA <<
      \context Voice = AvoiceAA \JIB_AvoiceAA
    >>

    \context Lyrics = ApartAverseA\lyricsto AvoiceAA  \JIB_ApartAverseA

    \set Score.skipBars = ##t
    %%\set Score.melismaBusyProperties = #'()
    \override Score.BarNumber.break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
    %% remove previous line to get barnumbers only at beginning of system.
    #(set-accidental-style 'modern-cautionary)
    \override Score.TimeSignature.style = #'() %%makes timesigs always numerical
    %% remove previous line to get cut-time/alla breve or common time
    \set Score.pedalSustainStyle = #'mixed
    %% make spanners comprise the note it end on, so that there is no doubt that this note is included.
    \override Score.TrillSpanner.bound-details.right.padding = #-2
    \override Score.TextSpanner.bound-details.right.padding = #-1
    %% Lilypond's normal textspanners are too weak:
    \override Score.TextSpanner.dash-period = #1
    \override Score.TextSpanner.dash-fraction = #0.5
    %% lilypond chordname font, like mscore jazzfont, is both far too big and extremely ugly (olagunde@start.no):
    \override Score.ChordName.font-family = #'roman
    \override Score.ChordName.font-size = #0
    %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
    \set Score.majorSevenSymbol = \markup {maj7}
  >>
}%% end of score-block

JIB_Strophen = \markup {
  \hspace #0.1
  \column {
    \line {
      \bold "2."
      \column {
        "A day or two ago I thought I'd take a ride,"
        "And soon Miss Fannie Bright was seated by my side."
        "The horse was lean and lank, misfortune seemed his lot,"
        "He got into a drifted bank and we got upsot."
        \bold |:Refrain:|
      }
    }
    \hspace #0.1
    \line {
      \bold "3."
      \column {
        "A day or two ago, The story I must tell"
        "I went out on the snow, And on my back I fell;"
        "A gent was riding by In a one-horse open sleigh,"
        "He laughed as there I sprawling lie, But quickly drove away."
        \bold "|:Refrain:|"
      }
    }
    \hspace #0.1
    \column {
      \line {
        \bold "4."
        \column {
          "Now the ground is white, go it while you're young,"
          "Take the girls tonight and sing this sleighing song."
          "Just get a bobtailed bay, two-forty for his speed,"
          "Then hitch him to an open sleigh, and crack! You'll take the lead."
          \bold "|:Refrain:|"
        }
      }
    }
  }
  \hspace #0.1
}
