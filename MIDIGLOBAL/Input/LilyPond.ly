\version "2.24.2"

\header {
  title = "Fugue for Piano Quartet"
  composer = "Hirotoshi Uchida"
}

% Language settings
\language "english"

% Instrument definitions for each part
pianoUpper = \relative c'' {
  \tempo "Grave" 4 = 40
  \time 4/4
  \key c \major
  \repeat unfold 256 {
    c16 d e f g a b c'
    \featherDurations 2/3 { c32[ b a g f e d c] }
    \glissando
    <e g c>4 <d f b>4
    \makeClusters { asah2 eh aih eisih }
    \retrograde { c4 b a g f e d c }
    \modalTranspose #-1 c8 d e f g a b c'
    \ottava #1 c4 d e f \ottava #0
  }
}

pianoLower = \relative c' {
  \time 4/4
  \repeat unfold 256 {
    a,1\-
    \dimin \fermata
    \turn c16 d e f g a
    \glissando c8 d e f
    \arpeggio <c e g>2 <d f b>
    \dynamicUp c4\f d8\mp e16\pp f32\ff
  }
}

flute = \relative c'' {
  \key f \major
  \repeat unfold 256 {
    c4 f e d
    \glissando g4 c' b c
    \tremolo 32 { c d e }
    \bar ":|"
  }
}

clarinet = \relative c' {
  \key aes \major
  \repeat unfold 256 {
    aes4 bes c des
    \arpeggio <d f a>2
    \tremolo 16 { c d }
    \glissando e1 f
  }
}

horn = \relative c {
  \key c \major
  \repeat unfold 256 {
    g,2 \fermata
    \dynamicDown \p c4 e g
    \glissando a, b
    \turn c2 d
  }
}

% Overall structure of the score
\score {
  <<
    \new PianoStaff <<
      \new Staff = "PianoUpper" \pianoUpper
      \new Staff = "PianoLower" \pianoLower
    >>
    \new Staff \with { instrumentName = "Flute" } \flute
    \new Staff \with { instrumentName = "Clarinet" } \clarinet
    \new Staff \with { instrumentName = "Horn" } \horn
  >>
  \layout {}
  \midi {
    \context {
      \Staff
      \override NoteHead.duration-log = 3
    }
  }
}
