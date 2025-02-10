\include "include.ily"
soprano = \relative c'' {
    r1 r2 cis1.~ cis2 b a4 gis fis1. fis1
}

alto = \relative c' {
    fis1.~ fis2 e dis4 fis e1 b2 cis( dis1~) dis
}

tenor = \relative c {
    fis2( gis) b gis1 gis2 cis2( dis) gis,( b1.) ais1
}

bass = \relative c {
    fis2( e2.) dis4 cis1 b'2~( b4 a) gis( fis2) e4 dis1.~ dis1
}

sopranowords = \lyricmode {
    Ky -- ri -- e e -- lei -- son.
}

words = \lyricmode {
    Ky -- ri -- e e -- le -- i -- son.
}

global = {
    \key e \major
    \time 3/2
}

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new ChoirStaff <<
        \new Lyrics = sopranos
        \new Staff = "women" <<
            \new Voice = "sopranos" {
                \voiceOne
                \global \soprano
            }
            \new Voice = "altos" {
                \voiceTwo
                \global \alto
            }
        >>
        \new Lyrics = "altos"
        \new Lyrics = "tenors"
        \new Staff = "men" <<
            \clef bass
            \new Voice = "tenors" {
                \voiceOne
                \global \tenor
            }
            \new Voice = "basses" {
                \voiceTwo
                \global \bass
            }
        >>
        \new Lyrics = "basses"
        \context Lyrics = sopranos \lyricsto sopranos \sopranowords
        \context Lyrics = altos \lyricsto altos \words
        \context Lyrics = tenors \lyricsto tenors \words
        \context Lyrics = basses \lyricsto basses \words
    >>
  >>
}
