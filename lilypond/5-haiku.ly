\include "include.ily"
\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
    \new Voice = "tenor" \relative c' {
      \clef "treble_8"
      \mark "I."
      \partial 4
      \time 7/4 es4 es( des2.) as2 ges4
      \time 5/4 bes1 bes4
      \time 3/2 ces4 bes f'2. es4
      \time 3/4 c2.
      \time 3/2 des4( c2) as bes4
      \time 2/4 bes2
      \time 3/2 f2
    }
    \new Lyrics \lyricsto "tenor" {
      A spark in the sun, this ti -- ny flower has roots deep in the cool earth.
    }
  >>
}

