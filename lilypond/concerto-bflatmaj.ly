\include "include.ily"
RH = \relative c' {
  \accidentalStyle piano
  \tempo \markup { \normal-text \huge Andante.}
  \key bes \major
  R1 R1
  <d f bes>8-! r <<{c'8-! a-!}\\{<c, f>8-! r}>> <bes d bes'>8-! r
  <<{<f' bes>8-! r}\\{bes,8-! d-!}>> <es g c>8-! r <c f a>8-! r
  <bes f' bes>8-! <<{bes'4( a8)}\\{<bes, es>8( <c f>4)}>>
}

LH = \relative c {
  \accidentalStyle piano
  \key bes \major
  \clef bass
  bes8-! bes'-! a-! f-! g( f16) es d8-! bes-!
  es-! c-! f-! es-! d-! g-! f-! f,-!
  bes8-! bes'-! a-! f-! g( f16) es d8-! bes-!
  es-! c-! f-! es-! d-! g-! f-! f,-!
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
