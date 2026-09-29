\version "2.26.0"

\header {
  title = "Untitled"
  composer = "Composer"
}

\score {
  \relative c' {
    c4
  }

  \layout {}
  \midi {}
}\header {
  title = "Un homme et une femme"
  composer = "Francis Lai"
  poet = "Pierre Barouh"
  key = "Mi Majeur (Transposé +1 ton)"
}

\paper {
  #(set-paper-size "a4")
  margin = 15\mm
}

% Grille d'accords au-dessus de la portée
accords = \chordmode {
  \repeat volta 2 {
    e1:maj7 | dis1:7 | d1:maj7 | cis1:7 |
    fis2:m7 b2:7 | e1:maj7 |
  }
  \alternative {
    { r1 }
    {
      r1 |
      e2:m7 a2:7.9- | d1:maj7 | d1:6 |
      e2:m7 a2:7 | d1:6 | d1:6 |
      fis2:m7 b2:7 | e1:maj7 | e1:6 |
      fis2:m7 b2:7 | e1:maj7 |
    }
  }
}

% Mélodie transposée en Mi majeur
melodie = \relative c'' {
  \clef treble
  \key e \major
  \time 2/4
  
  \repeat volta 2 {
    b8 b16 b b8 b16 b | b8 b16 b b8 gis |
    b8 b16 b b8 b16 b | b8 b16 b b8 gis |
    gis8. b16 dis8 fis | e2 |
  }
  \alternative {
    { r2 }
    {
      r4 e,8 fis |
      g8 a b c | cis8. d16 dis8 e | fis2 |
      r4 e8 dis | cis8 b a gis | fis2 |
      gis8. b16 dis8 fis | e2 |
    }
  }
}

% Paroles
paroles = \lyricmode {
  Comme nos voix ba-da-ba-da da-da-da-da-da
  Chan-te tout bas ba-da-ba-da da-da-da-da-da
  Nos cœurs ou-verts en har-mo-nie...
  
  ...Com-me nos bras...
}

\score {
  <<
    \new ChordNames { \accords }
    \new Staff { \melodie }
    \addlyrics { \paroles }
  >>
  \layout { }
  \midi { }
}