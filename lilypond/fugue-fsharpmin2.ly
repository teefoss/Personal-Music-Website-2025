\include "include.ily"

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
    \new PianoStaff <<
      \new Staff = "up" \relative c'' {
        \accidentalStyle piano
        \key fis \minor
        \time 4/2
        r\breve r\breve r\breve r\breve r\breve
      }
      \new Staff =  "down" \relative c' {
        \accidentalStyle piano
        \key fis \minor
        \clef bass
        <<{r\breve r\breve r\breve r\breve r1 e2. e4}
        \\{\relative c'{a2. a4 gis2 cis fis,2. fis4 e2 a d,2. d4 cis2 fis^~ fis eis^\trill fis2. a4 gis fis e dis cis2 cis'}}>>
      }
    >>
  >>
}
