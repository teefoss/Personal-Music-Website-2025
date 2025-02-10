\include "include.ily"

RH = \relative c' {
    \key cis \minor
  \tempo \markup{\normal-text \huge "Adagio sostenuto e tempo rubato."}
  \time 3/2
  \repeat unfold 2 {r4 cis~ cis8 e4.~ e2~ e4 cis~ cis8 b4.~ b2}
}

LH = \relative c {
    \key cis \minor
  \clef bass
  <cis gis'>2^\p <cis a'>1 \repeat unfold 3 { <cis gis'>2 <cis a'>1 }
}

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
    \new Staff \relative c'' {
        \key cis \minor
        R1.*2 r4 r8 e8^\p~ e4. cis8 cis2 b8 gis'4 e8~ e4 b a2
    }
    \addlyrics {
        Sil -- ver dust lift -- ed from the earth,
    }
    \new PianoStaff <<
      \new Staff = "upper" \RH
      \new Staff =  "lower" \LH
    >>
  >>
}

