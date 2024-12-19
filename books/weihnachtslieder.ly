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

\include "weihnachtslieder/am_weihnachtsbaume_die_lichter_brennen_voices.ly"

\bookpart{
  \header {
    subtitle = \AWB_Title
    composer = \AWB_Composer
    poet = \AWB_Poet
    copyright = \AWB_Copyright
    arranger = \AWB_Arranger
  }
  \AWB_Score
  \AWB_Strophen
}

\include "weihnachtslieder/der_christbaum_ist_der_schoenste_baum_voices.ly"
\bookpart{
  \header{
    date = \DCI_date
    source = \DCI_source
    style = \DCI_style
    maintainer = \DCI_maintainer
    maintainerEmail = \DCI_maintainerEmail
    subtitle = \DCI_title
    poet = \DCI_poet
    composer = \DCI_composer
    arranger = \DCI_arranger
    copyright = \DCI_copyright
  }
  \DCI_Score
  \DCI_Strophen
}

\include "weihnachtslieder/der_heiland_ist_geboren_voices.ly"
\bookpart{
  \header {
    subtitle = \DHI_title
    composer = \DHI_composer
    poet = \DHI_poet
    copyright = \DHI_copyright
    arranger = \DHI_arranger
  }
  \DHI_Score
  \DHI_Strophen
}

\include "weihnachtslieder/es_ist_ein_ros_entsprungen-einstimmig_voices.ly"
\bookpart{
  \header {
    subtitle = \EIE_title
    composer = \EIE_composer
    poet = \EIE_poet
    arranger = \EIE_arranger
    copyright = \EIE_copyright
  }
  \EIE_Score
  \EIE_Strophen
}

\include "weihnachtslieder/es_kommt_ein_schiff_geladen_voices.ly"
\bookpart{
  \header {
    subtitle = \EKE_title
    composer = \EKE_composer
    poet = \EKE_poet
    copyright = \EKE_copyright
    arranger = \EKE_arranger
  }
  \EKE_Score
  \EKE_Strophen
}

\include "weihnachtslieder/es_wird_scho_gleich_dumpa_voices.ly"
\bookpart{
  \header {
    subtitle = \EWS_title
    composer = \EWS_composer
    poet = \EWS_poet
    arranger = \EWS_arranger
    copyright = \EWS_copyright
  }
  \EWS_Score
}
