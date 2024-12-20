\version "2.24.2"

\header {
  title = "Oh Tannenbaum!"
  poet = "Text: J. A. Zarnack (1777–1827), E. Anschütz (1780–1861)"
  composer =  "Musik: Volksweise"
  arranger = "David Herrmann"
  copyright = "Public Domain"
}


verseI= \lyricmode {
  \set stanza = #"1."
  Oh Tan -- nen -- baum, oh Tan -- nen -- baum,
  wie grün sind dei -- ne Blät- ter!
  Du grünst nicht nur zur Som -- mer -- zeit,
  nein, auch im Win -- ter, wenn es schneit._
  Oh Tan -- nen -- baum, oh Tan -- nen- baum,
  wie grün sind dei -- ne Blät -- ter!
}

verseII= \lyricmode {
  \set stanza = #"2."
  Oh Tan -- nen -- baum, oh Tan -- nen -- baum,
  du kannst mir sehr ge -- fal -- len!
  Wie oft hat schon zur Win-- ters -- zeit
  ein Baum von dir mich hoch er -- freut!
  Oh Tan -- nen -- baum, oh Tan -- nen -- baum,
  du kannst mir sehr ge -- fal -- len!
}

verseIII= \lyricmode {
  \set stanza = #"3."
  Oh Tan -- nen -- baum, oh Tan -- nen -- baum,
  dein Kleid will mich was leh -- ren:
  Die Hoff- nung und Be -- stän -- dig -- keit
  gibt Mut und Kraft zu je -- der Zeit!
  Oh Tan -- nen -- baum, oh Tan -- nen -- baum,
  dein Kleid will mich was leh -- ren!
}


staffVoice = \new Staff {
  \time 3/4
  %\set Staff.instrumentName = "Voice"
  \set Staff.midiInstrument = "voice oohs"
  \key f \major
  \clef treble

  \relative c' {
    \context Voice = "melodyVoi" {
      \dynamicUp
      % Type notes here
      \autoBeamOff
      \partial 4 c^\mf
      f8. f16 f4 g
      a8. a16 a4. a8
      g8 a bes4 e,
      g f r8 c'
      c a d4. c8
      c bes bes4. bes8
      bes g c4. bes8
      bes a a4 c,^\markup {\italic più \dynamic f}
      f8. f16 f4 g
      a8. a16 a4. a8
      g8 a bes4 e,
      g f
    }

    \bar "|."
  }

}
staffPiano = \new PianoStaff {
  \set PianoStaff.midiInstrument = #"acoustic grand"
  %\set PianoStaff.instrumentName = #"Piano"
  <<
    \context Staff = "RH" {
      % Right hand
      \clef treble
      \key f \major
      \relative c' {
        \partial 4 c4
        <a c f>8. <a c f>16 <a c f>4 <c e g>4
        <c f a>8. <c f a>16 <c f a>4. <c f a>8
        <d g>8 <d fis a>8 <d g bes>4 <c e>4
        <c e g>4 <c a f'>4 r8 <c f c'>8

        <f c' c,>8 <c f a>8 <<{d'4. c8} \\ {d,2} \\ {f4 fis4}>>
        << {c'8 bes8} \\ {<d, g>4} >> << {bes'4. bes8} \\ {<d, g>2}>>
        << {bes'8 g8} \\ <g c,>4>> <<{c4. bes8} \\ {<g e>4 <g c,>4}>>
        << {<bes g>8 <a f>8} \\ c,4>> <c f a>4 c4
        <a c f>8. <a c f>16 <a c f>4 <c e g>4
        <c f a>8. <c f a>16 <c f a>4. <c f a>8
        <d g>8 <d fis a>8 <d g bes>4 <c e d>4
        <bes c e g>4 <c a f'>4

      }
    }
    \context Staff = "LH" {
      % Left hand
      \clef bass
      \key f \major
      \relative c {
        \partial 4 c4^\mf
        <c f f,>8. <c f f,>16 <c f f,>4 <c c,>4
        <f f,>8. <f f,>16 <f f,>4. <f f,>8
        <bes, bes'>8 <a a'>8 <g g'>4 <c bes'>4
        <b' f>4 <e, f,>4 r8 <a, a'>8

        <a a'>8 <f f'>8 <bes bes'>4 <a a'>4
        <g g'>4 <g g,>4 <g g'>8 <f f'>8
        <e e'>8 <d d'>8 <c c'>4 <e e'>4
        <f f'>4 <f f,>4 c'4^\markup {\italic più \dynamic f}
        <c f f,>8. <c f f,>16 <c f f,>4 <c c,>4
        <f f,>8. <f f,>16 <f f,>4. <a a,>8
        <bes, bes'>8 <a a'>8 <g g'>4 c4
        <c c,>4 <f f,>4
      }
    }
  >>
}


harmonies = \new ChordNames \chordmode {
  \germanChords
  % todo
}

\score {
  <<
    \harmonies
    \staffVoice
    \context Lyrics = "lmelodyVoiLI" \lyricmode { \lyricsto "melodyVoi" \verseI }

    \context Lyrics = "lmelodyVoiLII" \lyricmode { \lyricsto "melodyVoi" \verseII }

    \context Lyrics = "lmelodyVoiLIII" \lyricmode { \lyricsto "melodyVoi" \verseIII }

    \staffPiano
  >>

}

