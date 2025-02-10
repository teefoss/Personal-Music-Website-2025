\include "include.ily"
\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new PianoStaff <<
      \new Staff = "up" \relative c''' {
        \accidentalStyle piano
        \mark "Fantasia"
        \cadenzaOn
        \once \override Staff.TimeSignature.stencil = ##f
        r2 \appoggiatura{es16 as, g, ges' f e'} <cis cis'>2->
        \appoggiatura{as,16 g ges' f, e cis} <d, d'>2-> s2
        <dis' e gis a>4\p^\markup\italic"arpeggio" <es g as bes> <d es as> <des ges des'>
        <e gis e' f> <e f ges> <d es f>
      }
      \new Staff =  "down" \relative c {
        \accidentalStyle piano
        \clef bass
        \once \override Staff.TimeSignature.stencil = ##f
        <<{c1.^\ff \appoggiatura{g'16 ges' f, e cis d,} b'2->\fermata}
        \\{<c,, c'>1. <b b'>2->\fermata}>>
        c'''4 <es, bes' ces> <as, des as'> <g ges' as> <fis g'> <f' ges b> <e fis>
      }
    >>
  >>
}
