\include "include.ily"
RH = \relative c' {
  \accidentalStyle piano
  \tempo \markup { \normal-text \huge Allegro.}
  \key bes \major
}

LH = \relative c {
  \accidentalStyle piano
  \key bes \major
  \clef bass
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
