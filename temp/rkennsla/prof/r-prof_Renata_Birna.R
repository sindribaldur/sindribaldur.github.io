#' Próf úr R-hluta námskeiðisins STJ346G Ályktunartölfræði
#' 17. nóvember 2020 9:10 til 10:30



#' Leiðbeiningar ---------------------------------------------------------------
#' Sæl(l) Renata Birna,

#' Leystu eftirfarandi dæmi með því að nota R. Fylltu inn í skjalið með
#' viðeigandi skipunum. Svör við spurningunum verða að vera skrifuð með
#' „kommentum“ en einnig þarf að vera hægt að lesa út svörin úr úttaki
#' skipananna. Oft eru margar skipanir sem hægt er að nota til að leysa dæmin
#' ekki er gert upp á milli lausna svo lengi sem hægt er að sjá svörin með
#' auðveldum hætti. Allar kommenta-línur eiga að byrja á „#“.

#' Þú mátt nota öll gögn sem þú hefur aðgang að til að leysa dæmin en
#' þú mátt hvorki veita né þiggja hjálp frá samnemendum né nokkrum öðrum.

#' Sértu óviss mundu að gera samt þitt besta, gefið verður eins og hægt er fyrir
#' hálfkláruð svör. Þó einn undirliður sé ekki rétt reiknaður er samt hægt að fá
#' fullt hús stiga fyrir hina liðina.

#' Gættu þess að vista reglulega lausninar við dæmunum. Ef upp kemur spurning um
#' encoding þá skaltu alltaf velja UTF-8.






#' Dæmi 1 (40 stig) ------------------------------------------------------------

#' Í þessu dæmi er notast við innbyggðu vigrana letters og stata.name ásamt
#' gagnatöflunni irisd1 sem búin er til með eftirfarandi skipun

irisd1 <- iris[-130, ]

#' a. Hvað er vigurinn letters langur?

#' b. Hvaða ríki er númer 32 í vigrinum state.name?

#' c. Hvað er meðaltal dálksins Sepal.Length í gagnatöflunni irisd1?

#' d. Finndu lægsta gildið á Sepal.Length í irisd1? Hvaða tegund er það blóm?
#'    (Hér getur fallið which.min() komið að góðum notum)




#' Dæmi 2 (30 stig) ------------------------------------------------------------

#' Innbyggða gagnasafnið women inniheldur þyngd og hæð (í tommum) 15 Bandarískra
#' kvenna á aldrinum 30-39 ára frá árinu 1975.

#' a. Búðu til nýjan dálk í gagnasafninu sem heitir height_cm fyrir hæð kvennana
#'    í sentímetrum (ein tomma jafngildir 2,54 cm).

#' b. Hvað er staðalfrávik (standard deviation) breytunnar height_cm?

#' c. Gerum ráð fyrir að konurnar hafi verið valdar af handahófi úr þýðinu og
#'    aðrar forsendur t-prófs séu uppfylltar. Prófaðu núlltilgátuni að
#'    meðalhæð í þýðinu sé jöfn 167. Hvaða t og p gildi fáum við?




#' Dæmi 3 (30 stig) ------------------------------------------------------------

#' Byrjaðu á að hlaða upp gagnatöflu úr Íslensku kosningarannsókninni frá 2017
#' með eftirfarandi skipunum

library(haven)
ks <- as_factor(data.frame(
  read_sav(
    url(paste0(
      "https://www.dropbox.com/s/9e55gppzmv9q03i/",
      "ICENES_2017_Opin_adgangur_islenska_1utg.sav?dl=1"
    )),
    user_na = TRUE
  )
))

#' a. Búðu til nýtt gangasafn byggt á ks sem inniheldur aðeins svarendur sem
#' fæddir eru árið 1966 eða síðar. Kallaðu það ks2



#' Efirfarandi býr til þriðja gagnasafnið ks3 sem inniheldur svarendur sem tóku
#' afstöðu til spurningarinnar „(Ertu sammála eða ósammála því) að innflytjendur
#' eru að jafnaði góðir fyrir íslenskan efnahag.“ (dálkurinn heitir immeco).
ks3 <- ks2[grepl("sammála", ks2$immeco), ]

#' b. Búðu til nýja breytu í ks3 sem tekur gildi TRUE/FALSE eftir því hvort
#' svarandi er fæddur eftir 1990.

#' c. Við erum þá með breytu sem flokkar svarandur í tvo flokka eftir aldri.
#' Þeir sem eru fæddir milli 1966 og 1990 og þá sem eru fæddir eftir 1990.
#' Prófaðu hvort samband sé á milli áhuga á stjórnmálum og þessarar
#' aldursflokkunar. Notaðu kí-kvaðrat próf. Túlkaðu niðurstöðuna.





#' Bónusdæmi (10 stig, gildir aðeins til upphækkunar) --------------------------

#' Lögmál Benfords (Benford's Law) hefur verið notað til að reyna að meta hvort
#' kosningar hafi farið heiðarlega fram. Lögmálið segir að undir ákveðnum
#' kringumstæðum eigi dreifing fyrsta tölustafs mælinga að vera þannig að 1 eigi
#' að koma upp í um það bil 30% tilvika en 9 aðeins 4,5% tilvika. Sem dæmi er
#' fólksfjöldi í Reykjavík, Kópavogi og Garðabæ 128.793, 36.975 og 16.299. Tvær
#' af þessum mælingum hafa 1 sem fyrsta staf (66,6%) en ein 3 (33,3%). Ef öll
#' sveitaarfélög landsins eru skoðuð kemur í ljós að um 25% íbúatalna frá árinu
#' 2019 byrja á tölunni 1.

#' Notaðu fallið substring með viðföngin first=1 og last=1 til að sækja fyrsta
#' tölustaf dálksins pop í gapminder gögnunum fyrir árið 1962. Hvað er hlutfall
#' 1 í þessum gögnum? Hvað með 9?
