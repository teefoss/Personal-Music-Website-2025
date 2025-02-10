\include "include.ily"
RH = \relative c'' {
  \tempo \markup{\normal-text \huge "Andantino."}
  <<
    {b4 b b b b( a) a4.( g8) g8( f)~ f2 e4~ e8 g( \times2/3{f8 e d} c4 b)}
    \\{c2\p c c b a4( b8 d c4.) d8( c4 b c)_\markup \italic "poco rit." b}
  >>
}

LH = \relative c {
  \clef bass
  a8( e' a g) g,( e' a b) f,( c' g' a) g,( d' a'4)
  \times2/3{a,8( e' a)~} a4 g,8( e' a4) \times2/3{f,8 c' a'~} a4 g,8( d' a' d,)
}

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new PianoStaff <<
      \new Staff = "upper" \RH
      \new Staff =  "lower" \LH
    >>
  >>
}

