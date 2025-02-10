\include "include.ily"
RH = \relative c' {
  \mark "1. Sea Poppies"
  \tempo \markup{\normal-text \huge "Recitativo."}
  \cadenzaOn
  \once \override Staff.TimeSignature.stencil = ##f
    <d e>2.\f~ <d e>1^~_( <c e>2) r4
}

LH = \relative c,, {
  \clef bass
  \cadenzaOn
  \once \override Staff.TimeSignature.stencil = ##f
  <e fis'' g>2.~ <e fis'' g>1~ <e e'' g>2 r4
}

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new Staff \relative c''' {
        \cadenzaOn
        \once \override Staff.TimeSignature.stencil = ##f
        r4 g8^\f fis d4 r2 \times2/3{e4--^\mf d fis,} g2 r4
    }
    \addlyrics {
        Am -- ber husk flu -- ted with gold,
    }
    \new PianoStaff <<
      \new Staff = "upper" \RH
      \new Staff =  "lower" \LH
    >>
  >>
}

