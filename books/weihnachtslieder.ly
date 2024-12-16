\version "2.24.2"

% includes must be placed on root level (and NOT inside a bookpart):
% https://mail.gnu.org/archive/html/lilypond-user/2023-03/msg00176.html

\include "weihnachtslieder/alle_jahre_wieder_voices.ly"

\header{
  title = "Kinder wollen Singen"
}
\bookpart{
  \header {
    subtitle = \AJW_Title
    poet = \AJW_Poet
    composer = \AJW_Composer
    arranger = \AJW_Arranger
    copyright = \AJW_Copyright
  }
  \score{\AJW_Xa} \AJW_XaStrophen
}