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
\sourcefilename "lilypond/fantasy-guitar.ly"
\sourcefileline 0
\include "include.ily"
\score {
  <<
    \new Staff \relative c' {
      \accidentalStyle neo-modern
      \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 6 )
      \time 2/2
      \tempo \markup{\normal-text \huge "Molto adagio."}
      <e b'>2\p( <fis ais>) <e b'>( <fis ais>)
      <<
        {r4 g'2( fis4) r f2( e4)}\\
        {<e, b'>2( <fis ais>) <e b'>2( <fis ais>)}
      >>
      <<
        {\relative c''' {g1\rest r4 e2( dis4) r4 d2( cis4)}}\\
        {\relative c {cis1~ cis}}\\
        {\relative c' {\stemDown \repeat unfold 3 {<e b'>2_( <fis ais>)} }}
      >>
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
