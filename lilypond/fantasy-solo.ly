\include "include.ily"
\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new PianoStaff <<
      \new Staff = "up" \relative c' {
        \accidentalStyle piano
        \tempo \markup{\normal-text \huge Rubato.} 8. = 56
        \time 12/16
        s16. fis32 g d' fis d g, fis s16 s16. e32 g cis e8.
        s16. fis,32 b d cis b fis s16.
        s16.^\markup\italic"rit." e32 fis g c8.
      }
      \new Staff =  "down" \relative c {
        \accidentalStyle piano
        \clef bass
        b32^\markup{\dynamic p \italic legato}
        fis' d' s16. s8 d32 fis,
        cis g' d' s16. s8.
        d,32^\mf fis b s16.*2 d32 b fis
        e^\markup{\dynamic p \italic sub.} g c s16. s8.
      }
    >>
  >>
}
