\include "include.ily"

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 3 )
    \new StaffGroup <<
      \new Staff \relative c'' {
        \key b \minor
        <<
          { R1*3 d1~^\markup\italic"1." d~ d2 cis d g fis e~ e fis4 g fis4. s8}\\
          { R1*6 d1~_\markup\italic"2." d~ d2 cis d}\\
        >>
      }
      \new Staff \relative c {
        \clef bass
        \key b \minor
        b2 b^6 a^4^6 g^5^6 a^4 a^3
        \repeat unfold 2 { b2 b a g a a } b
      }
    >>
  >>
}
