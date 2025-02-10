\include "include.ily"
RH = \relative c'' {
  s1 s2 s4 s8
}

LHtwo = \relative {
  \accidentalStyle piano
  \clef bass
  fis16 cis'
  \change Staff = "up"
  d a' d,
  \change Staff = "down"
  cis fis, cis'
  fis, b
  \change Staff = "up"
  d a' g d
  \change Staff = "down"
  b fis
  e b'
  \change Staff = "up"
  c g' c,
  \change Staff = "down"
  b e, b' e, a
  \change Staff = "up"
  c g' f!8
}

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new PianoStaff <<
      \new Staff = "up" \RH
      \new Staff =  "down" \LHtwo
    >>
  >>
}
