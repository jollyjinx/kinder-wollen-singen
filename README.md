# Gemeinfreie Weihnachtslieder

Dieses Repository enthält gemeinfreie deutsche Weihnachtslieder als [Lilypond](https://lilypond.org/)-Dateien.
Das Repository basiert auf der [Vorarbeit von Patrick Stein (aka Jollyjinx)](https://github.com/jollyjinx/kinder-wollen-singen),
der wiederum Teile des unter "Creative Commons" lizensierten Materials von der (nicht mehr existierenden) Musikpiraten-Website kopiert hatte.

## Urheberrecht
Dieses Repository ist, sofern nicht in einzelnen Dateien anders angegeben, unter der [Creative Commons Public Domain License](LICENSE) lizensiert.

## Weihnachtslieder

| Titel / PDF                                                                                                                                                        | Tonart | Akkorde | Satz        | Lilypond-Datei                                                                                                  |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|---------|-------------|-----------------------------------------------------------------------------------------------------------------|
| [Adeste Fidelis / Herbei O Ihr Gläubigen](https://github.com/ranacrocando/kinder-wollen-singen/releases/latest/download/adeste_fidelis.pdf)                        | E      | ❌       | mehrstimmig | [`adeste_fidelis.ly`](books/weihnachtslieder/adeste_fidelis.ly)                                                 |
| [Alle Jahre wieder](https://github.com/ranacrocando/kinder-wollen-singen/releases/latest/download/alle_jahre_wieder.pdf)                                           | D      | ❌       | einstimmig  | [`alle_jahre_wieder.ly`](books/weihnachtslieder/alle_jahre_wieder.ly)                                           |
| [Am Weihnachtsbaume die Lichter brennen](https://github.com/ranacrocando/kinder-wollen-singen/releases/latest/download/am_weihnachtsbaume_die_lichter_brennen.pdf) | C      | ✅       | einstimmig  | [`am_weihnachtsbaume_die_lichter_brennen.ly`](books/weihnachtslieder/am_weihnachtsbaume_die_lichter_brennen.ly) |
| [Der Christbaum ist der schönste Baum](https://github.com/ranacrocando/kinder-wollen-singen/releases/latest/download/der_christbaum_ist_der_schoenste_baum.pdf) | G      | ✅       | mehrstimmig | [`der_christbaum_ist_der_schoenste_baum.ly`](books/weihnachtslieder/der_christbaum_ist_der_schoenste_baum.ly)   |
| [Der Heiland ist geboren](https://github.com/ranacrocando/kinder-wollen-singen/releases/latest/download/der_heiland_ist_geboren.pdf)                               | F      | ❌       | einstimmig  | [`der_heiland_ist_geboren.ly`](books/weihnachtslieder/der_heiland_ist_geboren.ly)                               |
| [Es ist ein Ros entsprungen](https://github.com/ranacrocando/kinder-wollen-singen/releases/latest/download/es_ist_ein_ros_entsprungen-einstimmig.pdf)              | F      | ✅       | einstimmig  | [`es_ist_ein_ros_entsprungen-einstimmig.ly`](books/weihnachtslieder/es_ist_ein_ros_entsprungen-einstimmig.ly)   |
| [Es kommt ein Schiff geladen](https://github.com/ranacrocando/kinder-wollen-singen/releases/latest/download/es_kommt_ein_schiff_geladen.pdf)                       | d      | ✅       | einstimmig  | [`es_kommt_ein_schiff_geladen.ly`](books/weihnachtslieder/es_kommt_ein_schiff_geladen.ly)                       |
| [Es wird scho gleich dumpa](https://github.com/ranacrocando/kinder-wollen-singen/releases/latest/download/es_wird_scho_gleich_dumpa.pdf)                           | G      | ✅       | einstimmig  | [`es_wird_scho_gleich_dumpa.ly`](books/weihnachtslieder/es_wird_scho_gleich_dumpa.ly)                           |
| [Fröhliche Weihnacht](https://github.com/ranacrocando/kinder-wollen-singen/releases/latest/download/froehliche_weihnacht.pdf)                                      | G      | ✅       | einstimmig  | [`froehliche_weihnacht.ly`](books/weihnachtslieder/froehliche_weihnacht.ly)                                     |
| [ALLE WEIHNACHTSLIEDER](https://github.com/ranacrocando/kinder-wollen-singen/releases/latest/download/weihnachtslieder.pdf) (noch unvollständig)                   |        |         |             | [`weihnachtslieder.ly`](books/weihnachtslieder.ly)                                                              |

## Unter der Haube
Nur die `.ly`-Dateien werden in git verwaltet.
Es gibt
1. sowohl einzelne Weihnachtslieder
2. als auch eine große [`weihnachtslieder.ly`](books/weihnachtslieder.ly)-Datei, die alle einzelnen Weihnachtslieder in einer großen Datei zusammenfasst.

[Eine Github Action](.github/workflows/release-pdf.yml) konvertiert für jeden Pull Request und für jedes Release _alle_ `.ly`-Dateien zu PDF-Dateien.
Die so erzeugten PDF-Dateien sind dann in den Action- bzw. [Release-Artifacts](https://github.com/ranacrocando/kinder-wollen-singen/releases) verfügbar.

### Konventionen
* Wir verwenden die "internationale"/englische B-Notation, d.h. `B` meint das deutsche `H` und `B♭` (Lilypond `bes`) meint das deutsche `B`. Das ist nur bei Akkorden für die Spielenden relevant, und alle, die z.B. Akkorde aus dem Internet verwenden sind daran gewöhnt.

### Unterschiede zum geforkten Repository von Jollyjinx
Diese CI ist ein wesentlicher Unterschied zu Jollyinx Repository, bei dem die Datein händisch/lokal konvertiert werden mussten (wahrscheinlich auch, weil es damals noch keine Github Actions gab).
Außerdem verzichten wir hier auf LaTex bzw. `lilypond-book`, was uns zwar ein bisschen Flexibilität nimmt aber das Setup als Ganzes deutlich vereinfacht.

