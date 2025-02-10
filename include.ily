\version "2.24.3"

#(set-global-staff-size 20)

\paper {
#(set-paper-size "letter")
#(define fonts
(set-global-fonts
#:music "beethoven"
#:brace "beethoven"
#:roman "OldMusicStandard"
#:sans "sans-serif"
#:typewriter "monospace"
#:factor (/ staff-height pt 20)
)
)

indent = 0
top-margin         = 0.5\in
bottom-margin     = 0.5\in
left-margin     = 0.5\in
right-margin     = 0.5\in

ragged-last-bottom=##t
ragged-last = ##t
}

