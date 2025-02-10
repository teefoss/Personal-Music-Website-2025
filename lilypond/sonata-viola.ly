\include "include.ily"

RH = \relative c'' {
  \key d \major
  \tempo \markup{\normal-text \huge "Allegro moderato."}
  <d d'>2\f <a a'>4-! <fis fis'>-! <d d'>-! s4 r8 a'-.\p b-. cis-. d2.( fis4) dis( e) r2
}

LH = \relative c {
  \clef bass
  \key d \major
  <d d'>2\f a'4-! fis-! d-! <<{<d d'>4^\sf}\\{d,-!\sf}>> r2
  \clef treble
  d''8\p( a' fis a) d,( a' fis a) cis,( a' g a) cis,( a' g a)
}

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new Staff \with { \magnifyStaff #3/4 } \relative c' {
      \clef alto
      \key d \major
      <d d'>2\f  a'4-! fis-! d-! d,\sf r2 R1 r4 a''8\p r e r cis r
    }
    \new PianoStaff <<
      \new Staff = "upper" \RH
      \new Staff =  "lower" \LH
    >>
  >>
}

