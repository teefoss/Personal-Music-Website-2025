\include "include.ily"
start = \markup{\dynamic mf \italic {sempre non vibrato}}
startp = \markup{\dynamic p \italic {sempre non vibrato}}

kyescom = \lyricmode { Ky -- ri -- e e -- le -- i -- son, }
kyesper = \lyricmode { Ky -- ri -- e e -- le -- i -- son. }
knocom = \lyricmode { Ky -- ri -- e e -- lei -- son, }
knoper = \lyricmode { Ky -- ri -- e e -- lei -- son. }

solo = \markup {\large Solo}
tutti = \markup {\large Tutti}

altoNotes = \relative c' {
    \time 3/2
  \key a \major
  <<
    {fis4.^\start fis8 fis2. fis4 gis1.\espressivo fis 2}
    \\{ b,4. b8 b2. b4 b1. b2}
  >>
    r1
}

tenorNotes = \relative c' {
  \clef "treble_8"
  \key a \major
  b1.^\markup{\dynamic p \italic{sempre non vibrato}} ~ b~ b\laissezVibrer
}

bassNotes = \relative c {
  \clef bass
  \key a \major
  <<
    {d4.^\start d8 d2. d4 e1.\espressivo d2}\\
    {\voiceTwo b4. b8 b2. b4 b1. b2}
  >>
  r1
}

bassText = \lyricmode { \knoper }


\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new ChoirStaff = "Staff_choir" <<
      \new Staff = "Staff_alto" {
        \set Staff.instrumentName = \markup \italic {"Alto "}
        \new Voice = "alto" { \altoNotes }
      }
      \addlyrics {
        Ky -- ri -- e e -- lei -- son.
      }

      \new Staff = "Staff_tenor" {
        \set Staff.instrumentName = \markup \italic {"Tenor "}
        \new Voice = "tenor" {
          \tenorNotes
        }
      }
        \addlyrics {
            Ky_-
        }

      \new Staff = "Staff_alto" {
        \set Staff.instrumentName = \markup \italic {"Bass "}
        \new Voice = "bass" { \bassNotes }
      }
        \addlyrics {
            Ky -- ri -- e e -- lei -- son.
        }
    >>
    #(set-accidental-style 'modern-cautionary)
    %\override Score.TimeSignature #'style = #'() %makes timesigs always numerical
  >>
  \layout { }
  \midi{ }

}
