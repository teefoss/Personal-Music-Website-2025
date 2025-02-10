\include "include.ily"

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
    \new PianoStaff <<
          \overrideTimeSignatureSettings
        2/2        % timeSignatureFraction
        1/4        % baseMoment
        2,2        % beatStructure
        #'((end . ((1/16 . (4 4 4 4)))))% beamExceptions

      \new Staff = "up" \relative c'' {
        \accidentalStyle piano
        \tempo \markup {\normal-text \huge "Andante un poco adagio."}
        \time 2/2
        <<{
          r8. g16 c8. g16 c8. g16 c8. g16~
          g8. b16 cis8. cis16 dis8. b16 cis8. ais16
        }
        \\{\relative c'{ 
          r16 e f8~ f16 e f8~ f16 e f8~ f16 e f8~
          f16 dis fis8~ fis16 dis fis8~ fis16 e fis8~ fis16 dis fis8
          }
          }>>
      }
      \new Staff =  "down" \relative c {
        \accidentalStyle piano
        \clef bass
        c1 dis
      }
    >>
  >>
}
