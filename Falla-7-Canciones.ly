%
% Siete Canciones Populares Españolas
%
% copyright: 2016 Jonathan Chen
% source: https://github.com/daemonblade/falla-7-canciones-populares
% style: indent 2 spaces, 80 cols, 1 bar/line
%
\version "2.18.2"

\header
{
  title = "Siete Canciones Populares Españolas"
  composer = "Manuel de Falla (1876-1946)"
  arranger = "Pawel Kochanski (1887-1934)"
  tagline = "https://github.com/daemonblade/falla-7-canciones-populares"
}

%
% pa : 1. El Paño Moruno
%
pa_begin =
{
  \tempo "Allegretto vivace" 4. = 72
  \time 3/8
  \key b \minor
}

pa_violin = \new Voice \relative c''
{
  \set Staff.instrumentName = #"Violin "
  r8 <a,-1 d-4\harmonic>4 ~
  <a d\harmonic>8 <a d\harmonic>4 ~
  <a d\harmonic>8 <a d\harmonic>4 ~
  <a d\harmonic>8 <a d\harmonic e a\harmonic>4
  r8 e' g
  f a d,
  e r d
  c <c a' e' e> r
  r <b fis'\harmonic>4 ~
  <b fis'\harmonic>8 <b fis'\harmonic>4 ~
  <b fis'\harmonic>8 <b fis'\harmonic>4 ~
  <b fis'\harmonic>8 <b fis' fis\harmonic cis'\harmonic>4
  r8 cis e
  d fis b,
  cis r b
  ais <ais^1 fis'-2 cis'>\p g-+
  \repeat unfold 3 { ais <ais fis' cis'> g-+ }
  <ais fis' a!> ais-+ r
  <ais fis' a> ais-+ r
  <ais fis' a> ais-+ r
  r r fis'
  b4 b8
  ais b cis
  d cis16 b ais8 ~
  ais4 fis8
  b4 b8
  cis e cis
}

pa_piano_upper = \relative c''
{
  \clef bass
  r8
    <<
      {
        a,4 ~
      } \\
      {
        s4
      }
    >>
  <<
    {
      a8 a4 ~
      a8 a4
      r8 e4
    } \\
    {
      s4.
      s4.
      s4.
    }
  >>
  \clef treble
  r8 e' g
  f a d,
  \tuplet 3/2 { e16 g f } e8 d
  \clef bass
  <<
    {
      cis4.
    } \\
    {
      r8\>
        \slurUp
        \tuplet 3/2 {e16([ a, e\! }
        \change Staff = "lower"
        \override Stem.direction = #UP
        g,8)]
        \change Staff = "upper"
        \revert Stem.direction
        \slurNeutral
    }
  >>
  r8
    <<
      {
        fis'4 ~
      } \\
      {
        s4
      }
    >>
  <<
    {
      fis8 fis4 ~
      fis8 fis4
    } \\
    {
      s4.
      s4.
    }
  >>
  r8 cis4
  \clef treble
  r8 cis' e
  d fis b,
  \tuplet 3/2 { cis16 e d } cis8 b
  \clef bass
  <<
    {
      ais4. ~
      ais ~
      ais ~
      ais
    } \\
    {
      r8 \tuplet 3/2 { cis,16[\pp fis cis' }
        \change Staff = "lower"
        \override Stem.direction = #UP
        g8]
        \change Staff = "upper"
        \revert Stem.direction
      \repeat unfold 3
        {
          r8 \tuplet 3/2 { cis,16 fis cis' }
            \change Staff = "lower"
            \override Stem.direction = #UP
            g8]
            \change Staff = "upper"
            \revert Stem.direction
        }
    }
  >>
  \clef treble
  \repeat unfold 3
    {
      r \tuplet 3/2 { a'!16 e ais, }
        \change Staff = "lower"
        \clef treble
        \override Stem.direction = #UP
        <fis g d'>8
        \clef bass
        \change Staff = "upper"
        \revert Stem.direction
    }
  s8 \stemUp <fis' a d fis>\arpeggio \stemNeutral r
  \clef bass
  <<
    {
      s fis8 s
    } \\
    {
      s \tuplet 5/2 { fis16[ d b g
        \change Staff = "lower"
        \override Stem.direction = #UP
        a! } fis8]
        \change Staff = "upper"
        \revert Stem.direction
    }
  >>
  \clef treble
  r <fis ais e' fis>\arpeggio r
  \clef bass
  <<
    {
      s fis'8 s
    } \\
    {
      s fis32[ d b g
        \change Staff = "lower"
        \override Stem.direction = #UP
        fis8]
        \change Staff = "upper"
        \revert Stem.direction
    }
  >>
  \clef treble
  r <fis ais e' fis>\arpeggio r
  r <fis b d fis>\arpeggio r
  r <a cis e a>\arpeggio r
}

pa_piano_lower = \relative c
{
  \clef bass
  a8-. b16-.
    \change Staff = "upper"
    b
    \change Staff = "lower"
    cis8-.
  d-. f16-.
    \change Staff = "upper"
    f
    \change Staff = "lower"
    d8-.
  c-. e16-.
    \change Staff = "upper"
    e
    \change Staff = "lower"
    c8-.
  <<
    {
      s8
        \change Staff = "upper"
        \override Stem.direction = #DOWN
        d16 e,
        \change Staff = "lower"
        \override Stem.direction = #UP
        a8
        \revert Stem.direction
    } \\
    {
      bes4( a8)-.
    }
  >>
  a, b cis!
  d e f
  g a bes
  a4-. s8
  fis8-. gis16-.
    \change Staff = "upper"
    gis
    \change Staff = "lower"
    ais8-.
  b-. d16-.
    \change Staff = "upper"
    d
    \change Staff = "lower"
    b8-.
  a-. cis16-.
    \change Staff = "upper"
    cis
    \change Staff = "lower"
    a8-.
  <<
    {
      s8
        \change Staff = "upper"
        \override Stem.direction = #DOWN
        b16 cis,
        \change Staff = "lower"
        \override Stem.direction = #UP
        fis8
        \revert Stem.direction
    } \\
    {
      g4( fis8)-.
    }
  >>
  fis gis ais
  b cis d
  e, fis g
  fis4 g'8
  \repeat unfold 3 { fis,4 g'8 }
  fis,4\< s8
  fis4 s8
  fis4 s8\!
  fis <fis' g! ais d e>\arpeggio r
  b,, s s
  \autoBeamOff
  cis g''\arpeggio r
  b,, s s
  cis g''\arpeggio r
  \autoBeamOn
  b,, r fis'
  a, r e'
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Book Generation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book
{
  \bookOutputSuffix "All"
  \score
  {
    \new StaffGroup
    <<
      \new Staff << \pa_begin \pa_violin >>
      \new PianoStaff
      <<
        \set PianoStaff.instrumentName = #"Piano "
        \set PianoStaff.connectArpeggios = ##t
        \new Staff = "upper" << \pa_begin \pa_piano_upper >>
        \new Staff = "lower" << \pa_begin \pa_piano_lower >>
      >>
    >>
    \header
    {
      piece = "1. El Paño Moruno"
    }
  }
}

\book
{
  \bookOutputSuffix "Violin"
  \score
  {
    \new Staff << \pa_begin \pa_violin >>
  }
  \header
  {
    piece = "1. El Paño Moruno"
  }
}
