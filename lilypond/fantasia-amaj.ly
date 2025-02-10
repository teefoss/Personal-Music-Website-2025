\include "include.ily"
\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new PianoStaff <<
      \new Staff = "up" \relative c' {
        \accidentalStyle piano
        \key a \major
        \tempo \markup{\normal-text \huge Slow.}
        <<
          {
            cis4 b4_~\fermata b8 cis8 cis8_( d16 e)
            d2~ d8 d_( e fis)
            e2~ e8 e e16_( fis g8)
            fis1
          }\\{
            a,1\fermata
            <a cis>2( b)
            <b d>4( cis8 b) cis2
            e4( d8 cis d4 cis)
          }
        >>

      }
      \new Staff =  "down" \relative c {
        \accidentalStyle piano
        \key a \major
        \clef bass
        <<
          {
            e2\fermata fis~
            fis gis~
            gis4 a8 gis a2
            a1
          }\\{
            a,1\fermata b cis d
          }
        >>

      }
    >>
  >>
}
