\include "include.ily"
\score {
  <<
    \new Staff \relative c' {
      \accidentalStyle neo-modern
      \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
      <<
        {
          \grace{<gis dis'>8\f(}
          fis''4~) fis32 e( dis_\markup\italic"dim." cis) cis( b ais cis64 b)
          b16( ais8 cis32 b)
          cis32( dis e fis,) gis( b a gis)
        }\\{
          \relative c'' {
            ais8. r16 r4 dis,8 r e16 r16 r8
          }
        }
      >>
      gis16(\p fis8 g,16) e'16( b) b( d32 cis) cis16( b8 a16) a
    }
  >>
}
