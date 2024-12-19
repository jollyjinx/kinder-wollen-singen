\version "2.24.2"
#(set-default-paper-size "a5")
% includes must be placed on root level (and NOT inside a bookpart):
% https://mail.gnu.org/archive/html/lilypond-user/2023-03/msg00176.html

\include "weihnachtslieder/adeste_fidelis_voices.ly" % ADF
\include "weihnachtslieder/alle_jahre_wieder_voices.ly" % AJW
\include "weihnachtslieder/am_weihnachtsbaume_die_lichter_brennen_voices.ly" % AWB
\include "weihnachtslieder/der_christbaum_ist_der_schoenste_baum_voices.ly" % DCI
\include "weihnachtslieder/der_heiland_ist_geboren_voices.ly" % DHI
\include "weihnachtslieder/es_ist_ein_ros_entsprungen-einstimmig_voices.ly" %EIE
\include "weihnachtslieder/es_kommt_ein_schiff_geladen_voices.ly" % EKE
\include "weihnachtslieder/es_wird_scho_gleich_dumpa_voices.ly" % EWS
\include "weihnachtslieder/froehliche_weihnacht_voices.ly" %FWU
\include "weihnachtslieder/ich_lag_und_schlief_da_traeumte_mir_voices.ly" % ILU
\include "weihnachtslieder/ihr_kinderlein_kommet_voices.ly" % IKK
\include "weihnachtslieder/jingle_bells_voices.ly" % JIB
\include "weihnachtslieder/joseph_lieber_joseph_mein_voices.ly" % JLJ
\include "weihnachtslieder/kling_gloeckchen_voices.ly" % KGK
\include "weihnachtslieder/kommet_ihr_hirten_voices.ly" % KIH
\include "weihnachtslieder/lasst_uns_froh_und_munter_sein_voices.ly" % LUF

\book{
  \header{
    title = "Kinder wollen Singen"
  }
  \bookpart{
    \header {
      date = \ADF_date
      source = \ADF_source
      style = \ADF_style
      maintainer = \ADF_maintainer
      maintainerEmail = \ADF_maintainerEmail
      title = \ADF_title
      poet = \ADF_poet
      composer = \ADF_composer
      tagline = ##f
      copyright = \ADF_copyright
      arranger = \ADF_arranger
    }
    \ADF_Score
    \ADF_Strophen
  }
  \bookpart{
    \header {
      title = \AJW_Title
      poet = \AJW_Poet
      composer = \AJW_Composer
      arranger = \AJW_Arranger
      copyright = \AJW_Copyright
    }
    \score{\AJW_Xa} \AJW_XaStrophen
  }


  \bookpart{
    \header {
      title = \AWB_Title
      composer = \AWB_Composer
      poet = \AWB_Poet
      copyright = \AWB_Copyright
      arranger = \AWB_Arranger
    }
    \AWB_Score
    \AWB_Strophen
  }


  \bookpart{
    \header{
      date = \DCI_date
      source = \DCI_source
      style = \DCI_style
      maintainer = \DCI_maintainer
      maintainerEmail = \DCI_maintainerEmail
      title = \DCI_title
      poet = \DCI_poet
      composer = \DCI_composer
      arranger = \DCI_arranger
      copyright = \DCI_copyright
    }
    \DCI_Score
    \DCI_Strophen
  }

  \bookpart{
    \header {
      title = \DHI_title
      composer = \DHI_composer
      poet = \DHI_poet
      copyright = \DHI_copyright
      arranger = \DHI_arranger
    }
    \DHI_Score
    \DHI_Strophen
  }


  \bookpart{
    \header {
      title = \EIE_title
      composer = \EIE_composer
      poet = \EIE_poet
      arranger = \EIE_arranger
      copyright = \EIE_copyright
    }
    \EIE_Score
    \EIE_Strophen
  }


  \bookpart{
    \header {
      title = \EKE_title
      composer = \EKE_composer
      poet = \EKE_poet
      copyright = \EKE_copyright
      arranger = \EKE_arranger
    }
    \EKE_Score
    \EKE_Strophen
  }


  \bookpart{
    \header {
      title = \EWS_title
      composer = \EWS_composer
      poet = \EWS_poet
      arranger = \EWS_arranger
      copyright = \EWS_copyright
    }
    \EWS_Score
  }

  \bookpart{
    \header{
      title = \FWU_title
      poet = \FWU_poet
      composer = \FWU_composer
      arranger = \FWU_arranger
      copyright = \FWU_copyright
    }
    \FWU_Score
  }

  \bookpart{
    \header {
      date = \ILU_date
      source = \ILU_source
      style = \ILU_style
      maintainer =\ILU_maintainer
      maintainerEmail = \ILU_maintainerEmail
      title = \ILU_title
      poet = \ILU_poet
      composer =\ILU_composer
      copyright = \ILU_copyright
      arranger = \ILU_arranger
    }
    \ILU_Score
    \ILU_Strophen
  }


  \bookpart{
    \header {
      title = \IKK_title
      poet = \IKK_poet
      composer = \IKK_composer
      arranger = \IKK_arranger
      maintainerEmail = \IKK_maintainerEmail
      maintainerWeb = \IKK_maintainerWeb
      copyright = \IKK_copyright
    }

    \IKK_Score
    \IKK_Strophen
  }

  \bookpart{
    \header {
      title = \JIB_title
      subtitle = \JIB_subtitle
      composer = \JIB_composer
      arranger = \JIB_arranger
    }

    \JIB_Score
    \JIB_Strophen

  }

  \bookpart{
    \header {
      title = \JLJ_title
      composer = \JLJ_composer
      poet = \JLJ_poet
      arranger = \JLJ_arranger
      copyright = \JLJ_copyright
    }

    \JLJ_Score
    \JLJ_Strophen
  }
  \bookpart{
    \header{
      title = \KGK_title
      poet = \KGK_poet
      composer = \KGK_composer
      arranger =\KGK_arranger
      copyright = \KGK_copyright
    }
    \KGK_Score
  }

  \bookpart{
    \header {
      title = \KIH_title
      poet = \KIH_poet
      composer = \KIH_composer
      arranger = \KIH_arranger
      maintainerEmail = \KIH_maintainerEmail
      maintainerWeb = \KIH_maintainerWeb
      copyright = \KIH_copyright
    }
    \KIH_Score
    \KIH_Strophen
  }
  \bookpart{
    \header {
      title = \LUF_title
      poet = \LUF_poet
      composer =  \LUF_composer
      arranger = \LUF_arranger
      copyright = \LUF_copyright
    }
    \LUF_Score
    \LUF_Strophen
  }
}