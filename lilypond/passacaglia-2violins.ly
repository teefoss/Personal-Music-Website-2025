\include "include.ily"
RH = \relative c''' {
  \accidentalStyle piano
  \tempo \markup{\normal-text \huge Andante. } 8 = 92
  \key es \major
  \time 6/8
  R2. bes4.\p es,~ es fes~ fes4 ges8 fes4 es8~ es4 des ces \appoggiatura{ces4} bes4.
}

LH = \relative c' {
  \accidentalStyle piano
  \key es \major
  <es g>4\p <es g>8 <es g>4 <es g>8 <es g>4 <es g>8 <es g>4 <es g>8
  <des as'>4 <des as'>8 <des as'>4 <des as'>8 <es g>4 <es g>8 <es g>4 <es g>8
  <ces bes'>4 <ces bes'>8 <des bes'>4 <des as'>8 <es g>4 <es g>8
}

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new StaffGroup <<
      \new Staff = "up" \RH
      \new Staff =  "down" \LH
    >>
  >>
}
