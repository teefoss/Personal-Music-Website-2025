\include "include.ily"

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
    \new PianoStaff <<
      \new Staff = "up" \relative c'' {
        \key d \minor
        \cadenzaOn
        \tempo \markup { \huge "Senza tempo." }
        \accidentalStyle neo-modern

        s1*2
        d16[ a f' d]
        a'[ f32 e d cis d e]
        f[ d e f g a b cis]
      }
      \new Staff =  "down" \relative c {
        \key d \minor
        \clef bass
        \cadenzaOn
        \accidentalStyle neo-modern

        <<
          {
            r2^\f r4 e4
            f8[ d cis d] f16[ d a' f] d'[ a gis a]
          }\\{
            d,,4~ <d a'>~ <d a' d>2~
            <d a'>1~ <d a'>2.\fermata
          }
        >>
      }
    >>
  >>
}
