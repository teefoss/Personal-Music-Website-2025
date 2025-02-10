\include "include.ily"

\score {
  <<
    
    \new PianoStaff <<
      \new Staff = "up" \relative c'' {
        \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
        \key c \minor
        \cadenzaOn
        \grace{c8(}
        c'2)\p~ c32[ b c es d c bes as] g[ c bes as g f] es[ g f es d c b]
        c[ es d c bes as] g[ c bes as g f] es[ g f es d]
      }
      \new Staff =  "down" \relative c {
        \clef bass
        \key c \minor
        \cadenzaOn
        \grace{s8}
        s2 s4 s8. s8 s16. s8. s s8 s32
      }
    >>
  >>
}
