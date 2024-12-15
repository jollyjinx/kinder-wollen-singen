\version "2.24.2"
\paper {
  %% print-all-headers = ##t
}
#(set-default-paper-size "a4")
#(set-global-staff-size 20)

\layout {
  indent = #0
}

\header {
  title = "Süßer die Glocken nie klingen"
  composer = "Volksweise"
  style = "Classical"
  maintainer = "Bernd Krüger"
  lastupdated = "2010/11/16"
  arranger = "Bernd Krüger"
  copyright = "Public Domain"
  tagline = ""
}

Barline = |

% The music follows

MvmntIVoiceI = {
  \autoBeamOff
  a'8. a'16 a'8 a' g' a' \Barline
  c''4. g' \Barline
  g'8. g'16 g'8 g'(f') g' \Barline
  a'4.( a'4) r8 \Barline
  %5
  c''8. c''16 c''8 c'' a' f' \Barline
  f''4. d'' \Barline
  c''8. d''16 c''8 c'' bes' g' \Barline
  f'4.( f'4) r8 \Barline
  g'8. g'16 g'8 a' a' a' \Barline
  %10
  c''8. bes'16 g'8 a'4. \Barline
  g'8. g'16 g'8 a' a' a' \Barline
  c''8. bes'16 g'8 a'4. \Barline
  c''8. bes'16 a'8 a' g' f' \Barline
  f''4.( d'') \Barline
  %15
  c''8. d''16 c''8 c'' bes' g' \Barline
  f'4.( f'4) r8 \bar "|."
}

MvmntIVoiceILyricsVerseI = \lyricmode {
  Sü- ßer die Glo- cken nie klin- gen, als zu der Weih- nachts- zeit;
  's ist als ob En- ge- lein sin- gen wie- der von Frie- den und Freud.
  Wie sie ge- sun- gen in se- li- ger Nacht, wie sie ge- sun- gen in se- li- ger Nacht!
  Glo- cken mit hei- li- gem Klang, klingt doch die Er- de ent- lang!
}

MvmntIVoiceITimeSig = \time 6/8
MvmntIVoiceIKeySig = \key f \major
MvmntIVoiceIClef = \clef treble
MvmntIVoiceIProlog = { \MvmntIVoiceITimeSig \MvmntIVoiceIKeySig \MvmntIVoiceIClef }
MvmntIVoiceIMusic = { \MvmntIVoiceIProlog \MvmntIVoiceI }
MvmntIVoiceIContext = \context Voice = VoiceIMvmntI { \MvmntIVoiceIMusic }

MvmntIStaffI = \new Staff <<
  \MvmntIVoiceIContext
  \new Lyrics \lyricsto VoiceIMvmntI \MvmntIVoiceILyricsVerseI
>>

\score {
  <<
    \MvmntIStaffI
  >>
  \layout { }
  \header { }
}

\markup {
  \hspace #0.1
  \column {
    \line {
      \bold "2."
      \column {
        "O, wenn die Glocken erklingen,"
        "schnell sie das Christkindlein hört:"
        "Tut sich vom Himmel dann schwingen"
        "eilig hernieder zur Erd’."
        "|: Segnet den Vater, die Mutter, das Kind, :|"
        "Glocken mit heiligem Klang,"
        "Klinget die Erde entlang!"
      }
    }
  }
  \hspace #0.1
  \column {
    \line {
      \bold "3."
      \column {
        "Klinget mit lieblichem Schalle"
        "über die Meere noch weit,"
        "daß sich erfreuen doch alle"
        "seliger Weihnachtszeit."
        "|: Alle aufjauchzen mit herrlichem Sang! :|"
        "Glocken mit heiligem Klang,"
        "Klinget die Erde entlang!"
      }
    }
  }
  \hspace #0.1
}
