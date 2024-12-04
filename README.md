# Tietoliikenteen sovellusprojekti 2024
Projekti on toteutettu kahden hengen ryhmässä.

Antti Niiranen, Juho Sainmaa

## Projektin aihe
Projektin aiheena on luoda anturidataa käsittelevä client, välittäen dataa langattomasti reitittimelle(Rasberry Pi). Reititin välittää datan tietokantaan, josta data noudetaan ja käsitellään clientillä. Tietokantaan luodaan TCP-rajapinta ja HTTP API. Kerättyä dataa haetaan kannettavaan koodatulla ohjelmalla ja käytetään koneoppimistarkoituksiin.

Projektissa käytetyt laitteet: NRF5340dk alustaa, Rasberry Pi(raspios_full_arm64), GY-61 kiihtyvyysanturi, kannettava tietokone.

Projektissa käytettyä ohjelmistoa: NRF Connect, VSCode, GitHub, Rufus.
<br></br>
![Projektin arkkitehtuurikuva](Arkkitehtuurikuva.drawio.png)
> **KUVA 1**. Projektin arkkitehtuurikuva

## Opetusdatan kerääminen
Anturidataa kerätään nRF5340-DK-alustaa käyttäen. Alustalle on tehty koodi, joka lukee kiihtyvyysanturilta tulevaa dataa ja lähettää sen langattomasti Raspberry Pi -koneelle Bluetooth Low Energyn välityksellä.
Raspberry-laitteelle on asennettu Linux-ympäristö ja laitteelle on tehty Python-ohjelma, joka tilaa ja vastaanottaa nRF5340-DK-alustan Bluetooth-lähetystä.
Ohjelmalla vastaanotettu data lähetetään erillisellä Linux-palvelimella olevaan MySQL-tietokantaan, josta sitä käytetään k-means-algoritmin opetukseen.
<br></br>
## K-means algoritmi
Projektissa opetetaan k-means algoritmi tunnistamaan anturidatan osoittama suunta. Algoritmi opetetaan opetusdatalla, jota kerätään kuudesta eri suunnasta.
Tietokantaan tallennettu data haetaan pyhthon scriptillä, joka tallentaa datan csv tiedostoksi.

Opetukseen tehty ohjelma laskee kuusi satunnaista keskipistettä jokaista datapistettä kohden ja lajitteleen datapisteet lähimmälle satunnaisesti arvotulle keskipisteelle.
Jokaista keskipistettä vastaava datapisteiden arvot summataan ja jaetaan keskipisteitä vastaavien datapisteiden lukumäärällä. Näin saadaan laskettua uusi keskipiste, josta lasketaan uudet keskipisteet.
Keskipisteitä lasketaan jokaisesta datapisteestä, kunnes keskipisteet eivät enään muutu. Lopulliset pisteet tallennetaan .h tiedostoon, mikä liitetään suuntaa tunnistavaan koodiin.

![K-means algoritmin ensimmäiset keskipisteet ja datapisteet.](kmeansclustering.PNG)
> **KUVA 2**. K-means algoritmin ensimmäiset keskipisteet ja datapisteet.

## Suuntaa tunnistava ohjelma
NRF5340dk alustalle luodaan ohjelma, joka tunnistaa anturin osoittaman suunnan.
