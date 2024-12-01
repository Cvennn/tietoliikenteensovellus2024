# Tietoliikenteen sovellusprojekti 2024
## Projektin aihe
Projektin aiheena on luoda anturidataa käsittelevä client, välittäen dataa langattomasti reitittimelle(Rasberry Pi). Reititin välittää datan tietokantaan, josta data noudetaan ja käsitellään clientillä.
Tietokantaan luodaan TCP-rajapinta ja HTTP API. Kerättyä dataa haetaan kannettavaan koodatulla ohjelmalla ja käytetään koneoppimistarkoituksiin.
![Arkkitehtuurikuva.drawio.png](Arkkitehtuurikuva.drawio.png)

## Opetusdatan kerääminen
Opetusdataa kerätään nrf5340dk alustaa käyttäen. Alustalle on they koodi, joka lukee kiihtyvyysanturilta tulevaa dataa ja lähettää sen langattomasti rasberry pi koneelle bluetooth low energyn välityksellä.
Rasberry laitteelle on asennettu linux ympäristö ja laitteelle on tehty ohjelma, mikä tilaa ja vastaanottaa nrf alustan bluetooth lähetystä.
Ohjelmalla vastaanotettu data lähetetään erillisellä linux palvelimella olevaan MySQL tietokantaan, mistä sitä käytetään k-means algoritmin opetukseen.

## K-means algoritmi
Projektissa opetetaan k-means algoritmi tunnistamaan anturidatan osoittama suunta. Algoritmi opetetaan opetusdatalla, jota kerätään kuudesta eri suunnasta.
Tietokantaan tallennettu data haetaan pyhthon scriptillä, joka tallentaa datan csv tiedostoksi. Opetukseen käytettävä data luetaan tästä csv tiedostosta.
Opetukseen tehty ohjelma laskee kuusi satunnaista keskipistettä jokaista datapistettä kohden ja lajitteleen datapisteet lähimmälle satunnaisesti arvotulle pisteelle.
Keskipisteitä lasketaan monta kertaa, kunnes keskipiste ei enään muutu. Lopulliset pisteet tallennetaan .h tiedostoon, mikä liitetään suuntaa tunnistavaan koodiin.
![kmeansclustering.PNG](kmeansclustering.PNG)
