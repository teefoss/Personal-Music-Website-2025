\include "include.ily"

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
    \new PianoStaff <<
      \new Staff = "up" \relative c'' {
        \accidentalStyle piano
        \tempo \markup {\normal-text \huge "Con rubato."} 2 = 58
        \time 3/2
        <<{e2( d2. g4 cis,2 dis1) dis2( e1 bes1.)}
        \\{\relative c''{ c1 \tieDashed b2~ b1. b1 a2~ a1 g2}}>>
      }
      \new Staff =  "down" \relative c'' {
        \accidentalStyle piano
        <<{g1. fis1 gis4( fis) e1. d1( es2)}
        \\{\relative c' { c1. dis gis, g}}>>
      }
    >>
  >>
}
