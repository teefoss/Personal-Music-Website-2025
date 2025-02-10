\include "include.ily"

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new PianoStaff <<
      \new Staff = "up" \relative c'' {
        \accidentalStyle piano
        \key g \major
        \tempo \markup{\normal-text \huge Presto}
        R1*5 a2 d, gis
      }
      \new Staff =  "down" \relative c {
        \accidentalStyle piano
        \key g \major
        \clef bass
        \time 2/2
        d2 g, cis~ cis4. d16( e) \times 2/3 { d4 b g} cis4.( d16 e) d4 a( d a')
        a2 gis4.\trill fis16 gis a4 cis2 b4~ b e,
      }
    >>
  >>
}
