\include "include.ily"
RH = \relative c'' {
  \accidentalStyle piano
  \time 3/2
  <<
    {cis1.( fis, b!) gis( a b)}
    \\
    {bes,1(\p c!2 d!1.) bes1( es2 a,1.) g1.( a)}
  >>
}

LH = \relative c, {
  \accidentalStyle piano
  \clef bass
  fis1.(\p g a) fis( b e)
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