\include "include.ily"

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
    \new PianoStaff <<
      \new Staff = "up" \relative c'' {
        \accidentalStyle piano
        \key d \minor
        <<{r\breve r1 a2. a4 gis2 c b1 a2 d~ d4 cis8 b cis2 d2 s4}
        \\{\relative c' {d2. d4 cis2 f e1 d2 f~ f4 e8 d e4 fis g4 d g2~ g4 f8 e f4 d e2. e4 d s s}}>>
      }
      \new Staff =  "down" \relative c {
        \accidentalStyle piano
        \key d \minor
        \clef bass
        \time 4/2
        R\breve*4
        d2.
      }
    >>
  >>
}
