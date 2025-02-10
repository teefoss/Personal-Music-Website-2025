\include "include.ily"

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
    \new PianoStaff <<
      \new Staff = "up" \relative c'' {
        \accidentalStyle piano
        \key fis \minor
        <<{ R1*4 r4 r8 fis16( eis) fis4( cis)}
        \\{\relative c'' {\slurNeutral r2 r4 r8 cis16( b) cis4( fis,) r4 r8 d'16( cis) d8^! cis^! b4
          r4 r8 d16( cis) d4( fis,) r4 r8 b16( a) b8-! a-! \slurDown gis( b) a4 r8 s
        }}>>
      }
      \new Staff =  "down" \relative c {
        \accidentalStyle piano
        \key fis \minor
        \clef bass
        R1*5
      }
    >>
  >>
}
