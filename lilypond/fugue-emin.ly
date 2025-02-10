\include "include.ily"

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
    \new PianoStaff <<
      \new Staff = "up" \relative c'' {
        \accidentalStyle piano
        \key e \minor
        \time 3/2
        <<{\tieNeutral e2 b g'~ g fis4 e fis2~ fis e4 dis e2~ e d4 cis d2~ d4 e d2 cis\trill b4 cis d e fis2 }
        \\{\relative c'' {R1.*5 b2 fis d'}}>>
      }
      \new Staff =  "down" \relative c {
        \accidentalStyle piano
        \key e \minor
        \clef bass
        R1.*6
      }
    >>
  >>
}
