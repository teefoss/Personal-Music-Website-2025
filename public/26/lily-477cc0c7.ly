%% Generated by lilypond-book
%% Options: [indent=0\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************

#(ly:set-option 'eps-box-padding 3.000000)



\paper {
  indent = 0\mm
    #(define fonts
     (set-global-fonts
      #:music "beethoven"
      #:brace "beethoven"
      #:roman "OldMusicStandard"
      #:sans "sans-serif"
      #:typewriter "monospace"
      #:factor (/ staff-height pt 20)
      ))
}

\layout {
  
}




% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "lilypond/fugue-emin.ly"
\sourcefileline 0
\include "include.ily"

\score {
  <<
    \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 4 )
    \new PianoStaff <<
      \new Staff = "up" \relative c'' {
        \accidentalStyle piano
        \key e \minor
        \time 3/2
        <<{\tieNeutral e2 b g'~ g fis4 e fis2~ fis e4 dis e2~ e d4 cis d2~ d4 e d2 cis\trill b4 cis d e fis2 }
        \\{\relative c'' {R1.*5 b2 fis d'}}>>
      }
      \new Staff =  "down" \relative c {
        \accidentalStyle piano
        \key e \minor
        \clef bass
        R1.*6
      }
    >>
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
