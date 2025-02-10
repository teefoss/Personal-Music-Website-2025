
\include "include.ily"
\score {
  <<
    \new Staff \relative c' {
      \time 6/8
      \key d \minor
      \accidentalStyle neo-modern
      \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
      \repeat unfold 2 { d16( f a f a d) f( d cis d) a( f) }
      es( f g es bes' es) g( es d es) bes( g)
    }
  >>
}
