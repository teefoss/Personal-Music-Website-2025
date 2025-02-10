\include "include.ily"
\score {
  <<
    \new Staff \relative c'' {
      \accidentalStyle neo-modern
      \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
      \cadenzaOn
      r4\fermata gis1\pp r4\fermata e''1 r4\fermata b,,1\ppp
      r4\fermata r8 b\mp a'2.( b4) e2 gis1\fermata
    }
  >>
}
