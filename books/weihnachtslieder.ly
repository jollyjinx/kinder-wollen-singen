\version "2.24.2"

% includes must be placed on root level (and NOT inside a bookpart):
% https://mail.gnu.org/archive/html/lilypond-user/2023-03/msg00176.html

\header{
  title = "Kinder wollen Singen"
}
\include "weihnachtslieder/alle_jahre_wieder_voices.ly"

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
\include "weihnachtslieder/adeste_fidelis_voices.ly"

\bookpart{
  \header {
    date = \ADF_date
    source = \ADF_source
    style = \ADF_style
    maintainer = \ADF_maintainer
    maintainerEmail = \ADF_maintainerEmail
    subtitle = \ADF_title
    poet = \ADF_poet
    composer = \ADF_composer
    tagline = ##f
    copyright = \ADF_copyright
    arranger = \ADF_arranger
  }
  \ADF_Score
  \ADF_Strophen
}



