\include "include.ily"
RH = \relative c' {
  \accidentalStyle piano
  \tempo 8 = 52 \time 5/8
  <d es'>\p\upbow\< <a' cis>\downbow\> r8\!
  <g, d'>4_\markup\italic"simile" <a as'> r8
  <bes f'>4_\markup\italic"cresc." <as e'>4.~\downbow
  \time 2/8 <as e'>16-!\upbow r16 r8 \bar"||"
  \tempo 8 = 152
  \time 6/8 r bes'_\markup{\dynamic p \italic staccato}\upbow d r4 r8
  \time 4/8 es8\downbow fis r4
  <e e'>8\sfz r gis,,\p^\markup\italic"pizz." r
}

LH = \relative c {
  \accidentalStyle piano
  \clef bass
  <g bes'>4\p\upbow\< <g as'>\downbow\> r8\!
  <bes es>4 <bes e> r8
  <d a'>4_\markup\italic"cresc." <d cis'>4.~
  \time 2/8 d4
  \time 6/8
  g,8_\markup{\dynamic p \italic staccato}\upbow r4 r8 c\downbow r
  a8\downbow r r f\upbow
  cis\sfz r b''^\markup\italic"pizz."\p r
}

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new StaffGroup <<
      \new Staff = "up" \RH
      \new Staff =  "down" \LH
    >>
  >>
}
