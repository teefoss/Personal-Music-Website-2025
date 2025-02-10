\include "include.ily"
\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new Staff \with {\consists "Span_arpeggio_engraver"}
    \relative c' {
        \mark "17. Passacaglia"
      \set Staff.connectArpeggios = ##t
      \clef "treble_8"
      \key d \minor
      \time 4/4
      \tempo \markup {\large \normal-text "Adagio ben ritmico e tempo guisto"} 4 = 52

      %THEME
      <<{f8.\f f16 f8 f e8. e16 e8 e }\\{<a,, a' c>2 <a a' c>}>>
      <<{d'8. d16 d8 d}\\{bes4. g8}\\{\stemDown a,2 \stemNeutral}>>
      <<{e''8. e16 e8 e f8._\markup{\dynamic rf} f16 f8 f e8. e16 e8 e }\\{<a,, a' cis>2 <a a' c!>2 <a a' c>}>>
      <<{d'8._\markup{\italic dim.} d16 d8 d}\\{bes4. a16 g}\\{\stemDown a,2 \stemNeutral}>>
      <<{d'8. d16 d8 e}\\{<d,, fis'>2}>>
    }
  >>
}