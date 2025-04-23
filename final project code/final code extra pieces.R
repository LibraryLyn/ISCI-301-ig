
# final variables by speaker (chronological and frequency, nrc and afinn)
#FREQUENCY TABLES
  freq_angelica <- data.frame(table(angelica_lyrics$word)) %>% arrange(desc(Freq))
  freq_burr <- data.frame(table(burr_lyrics$word)) %>% arrange(desc(Freq))
  freq_eliza <- data.frame(table(eliza_lyrics$word)) %>% arrange(desc(Freq))
  freq_hamilton <- data.frame(table(hamilton_lyrics$word)) %>% arrange(desc(Freq))
  
  
  
  
#testing: 
  angelica_lyrics <- messy_angelica_lyrics %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  freq_angelica <- data.frame(table(angelica_lyrics$word)) %>% arrange(desc(Freq))
  View(freq_angelica)

nrc_unsorted <- angelica_lyrics %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
nrc_by_freq <- data.frame(freq_angelica) %>% inner_join(get_sentiments("nrc"))

#ANGELICA VARIABLES
  ange_nrc_chrono <- angelica_lyrics %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many") #good
  ange_nrc_freq <- freq_angelica %>% inner_join(get_sentiments("nrc")) #error
  ange_afinn_chrono <- angelica_lyrics %>% inner_join(get_sentiments("afinn")) #good
  ange_afinn_freq <- freq_angelica %>% inner_join(get_sentiments("afinn")) #error
  print(angelica_lyrics)
  print(ange_afinn_chrono)
  print(freq_angelica)
  ?inner_join



#BURR VARIABLES
  burr_nrc_chrono<- burr_lyrics %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  burr_nrc_freq <- freq_burr %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  burr_afinn_chrono <- burr_lyrics %>% inner_join(get_sentiments("afinn"))
  burr_afinn_freq <- freq_burr %>% inner_join(get_sentiments("afinn"))
#ELIZA VARIABLES
  eliza_nrc_chrono <- eliza_lyrics %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  eliza_nrc_freq <- freq_eliza %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  eliza_afinn_chrono <- eliza_lyrics %>% inner_join(get_sentiments("afinn"))
  eliza_afinn_freq <- freq_eliza %>% inner_join(get_sentiments("afinn"))
#HAMILTON VARIABLES
  hamilton_nrc_chrono <- hamilton_lyrics %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  hamilton_nrc_freq <- freq_hamilton %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  hamilton_afinn_chrono <- hamilton_lyrics %>% inner_join(get_sentiments("afinn"))
  hamilton_afinn_freq <- freq_hamilton %>% inner_join(get_sentiments("afinn"))


#SONGS NRC (sort by frequency and NRC sentiment analysis)
  alexham_nrc_freq <- data.frame(table(alexham)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  burrsir_nrc_freq <- data.frame(table(burrsir)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  myshot_nrc_freq <- data.frame(table(myshot)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  storynight_nrc_freq <- data.frame(table(storynight)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  schuyler_nrc_freq <- data.frame(table(schuyler)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  farmerref_nrc_freq <- data.frame(table(farmerref)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  youllbeback_nrc_freq <- data.frame(table(youllbeback)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  righthand_nrc_freq <- data.frame(table(righthand)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  winter_nrc_freq <- data.frame(table(winter)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  helpless_nrc_freq <- data.frame(table(helpless)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  satisfied_nrc_freq <- data.frame(table(satisfied)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  storyreprise_nrc_freq <- data.frame(table(storyreprise)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  waitforit_nrc_freq <- data.frame(table(waitforit)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  stayalive_nrc_freq <- data.frame(table(stayalive)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  duel_nrc_freq <- data.frame(table(duel)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  meetme_nrc_freq <- data.frame(table(meetme)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  enough_nrc_freq <- data.frame(table(enough)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  gunsnships_nrc_freq <- data.frame(table(gunsnships)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  historyeyes_nrc_freq <- data.frame(table(historyeyes)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  yorktown_nrc_freq <- data.frame(table(yorktown)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  whatcomes_nrc_freq <- data.frame(table(whatcomes)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  theodosia_nrc_freq <- data.frame(table(theodosia)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  nonstop_nrc_freq <- data.frame(table(nonstop)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  whatdimiss_nrc_freq <- data.frame(table(whatdimiss)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  cabinet_nrc_freq <- data.frame(table(cabinet)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  takeabreak_nrc_freq <- data.frame(table(takeabreak)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  sayno_nrc_freq <- data.frame(table(sayno)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  roomwhere_nrc_freq <- data.frame(table(roomwhere)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  schdefeat_nrc_freq <- data.frame(table(schdefeat)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  cabtwo_nrc_freq <- data.frame(table(cabtwo)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  washington_nrc_freq <- data.frame(table(washington)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  onelasttime_nrc_freq <- data.frame(table(onelasttime)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  iknowhim_nrc_freq <- data.frame(table(iknowhim)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  adams_nrc_freq <- data.frame(table(adams)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  weknow_nrc_freq <- data.frame(table(weknow)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  hurricane_nrc_freq <- data.frame(table(hurricane)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  burn_nrc_freq <- data.frame(table(burn)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  blowaway_nrc_freq <- data.frame(table(blowaway)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  stayreprise_nrc_freq <- data.frame(table(stayreprise)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  quietuptown_nrc_freq <- data.frame(table(quietuptown)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  election_nrc_freq <- data.frame(table(election)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  yourobedient_nrc_freq <- data.frame(table(yourobedient)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  bestofwives_nrc_freq <- data.frame(table(bestofwives)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  worldwide_nrc_freq <- data.frame(table(worldwide)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")
  wholives_nrc_freq <- data.frame(table(wholives)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("nrc"), relationship = "many-to-many")

  
#SONGS AFINN (sort by frequency and AFINN sentiment analysis)
  alexham_afinn_freq <- data.frame(table(alexham)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  burrsir_afinn_freq <- data.frame(table(burrsir)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  myshot_afinn_freq <- data.frame(table(myshot)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  storynight_afinn_freq <- data.frame(table(storynight)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  schuyler_afinn_freq <- data.frame(table(schuyler)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  farmerref_afinn_freq <- data.frame(table(farmerref)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  youllbeback_afinn_freq <- data.frame(table(youllbeback)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  righthand_afinn_freq <- data.frame(table(righthand)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  winter_afinn_freq <- data.frame(table(winter)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  helpless_afinn_freq <- data.frame(table(helpless)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  satisfied_afinn_freq <- data.frame(table(satisfied)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  storyreprise_afinn_freq <- data.frame(table(storyreprise)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  waitforit_afinn_freq <- data.frame(table(waitforit)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  stayalive_afinn_freq <- data.frame(table(stayalive)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  duel_afinn_freq <- data.frame(table(duel)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  meetme_afinn_freq <- data.frame(table(meetme)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  enough_afinn_freq <- data.frame(table(enough)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  gunsnships_afinn_freq <- data.frame(table(gunsnships)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  historyeyes_afinn_freq <- data.frame(table(historyeyes)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  yorktown_afinn_freq <- data.frame(table(yorktown)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  whatcomes_afinn_freq <- data.frame(table(whatcomes)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  theodosia_afinn_freq <- data.frame(table(theodosia)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  nonstop_afinn_freq <- data.frame(table(nonstop)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  whatdimiss_afinn_freq <- data.frame(table(whatdimiss)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  cabinet_afinn_freq <- data.frame(table(cabinet)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  takeabreak_afinn_freq <- data.frame(table(takeabreak)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  sayno_afinn_freq <- data.frame(table(sayno)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  roomwhere_afinn_freq <- data.frame(table(roomwhere)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  schdefeat_afinn_freq <- data.frame(table(schdefeat)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  cabtwo_afinn_freq <- data.frame(table(cabtwo)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  washington_afinn_freq <- data.frame(table(washington)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  onelasttime_afinn_freq <- data.frame(table(onelasttime)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  iknowhim_afinn_freq <- data.frame(table(iknowhim)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  adams_afinn_freq <- data.frame(table(adams)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  weknow_afinn_freq <- data.frame(table(weknow)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  hurricane_afinn_freq <- data.frame(table(hurricane)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  burn_afinn_freq <- data.frame(table(burn)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  blowaway_afinn_freq <- data.frame(table(blowaway)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  stayreprise_afinn_freq <- data.frame(table(stayreprise)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  quietuptown_afinn_freq <- data.frame(table(quietuptown)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  election_afinn_freq <- data.frame(table(election)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  yourobedient_afinn_freq <- data.frame(table(yourobedient)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  bestofwives_afinn_freq <- data.frame(table(bestofwives)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  worldwide_afinn_freq <- data.frame(table(worldwide)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))
  wholives_afinn_freq <- data.frame(table(wholives)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"))

#TODO: this data frame doesnt work. plan for other solution
# songs_dataframe <- data.frame(
#   song_order = c(1:45),
#   title = c(song_titles),
#   song_lyrics = c(alexham, burrsir, myshot, storynight, schuyler, farmerref, youllbeback, righthand, winter, helpless, satisfied, storyreprise, waitforit, stayalive, duel, meetme, enough, gunsnships, historyeyes, yorktown, whatcomes, theodosia, nonstop, whatdimiss, cabinet, takeabreak, sayno, roomwhere, schdefeat, cabtwo, washington, onelasttime, iknowhim, adams, weknow, hurricane, burn, blowaway, stayreprise, quietuptown, election, yourobedient, bestofwives, worldwide, wholives), 
#   nrc_chrono = c(alexham_nrc_chrono, burrsir_nrc_chrono, myshot_nrc_chrono, storynight_nrc_chrono, schuyler_nrc_chrono, farmerref_nrc_chrono, youllbeback_nrc_chrono, righthand_nrc_chrono, winter_nrc_chrono, helpless_nrc_chrono, satisfied_nrc_chrono, storyreprise_nrc_chrono, waitforit_nrc_chrono, stayalive_nrc_chrono, duel_nrc_chrono, meetme_nrc_chrono, enough_nrc_chrono, gunsnships_nrc_chrono, historyeyes_nrc_chrono, yorktown_nrc_chrono, whatcomes_nrc_chrono, theodosia_nrc_chrono, nonstop_nrc_chrono, whatdimiss_nrc_chrono, cabinet_nrc_chrono, takeabreak_nrc_chrono, sayno_nrc_chrono, roomwhere_nrc_chrono, schdefeat_nrc_chrono, cabtwo_nrc_chrono, washington_nrc_chrono, onelasttime_nrc_chrono, iknowhim_nrc_chrono, adams_nrc_chrono, weknow_nrc_chrono, hurricane_nrc_chrono, burn_nrc_chrono, blowaway_nrc_chrono, stayreprise_nrc_chrono, quietuptown_nrc_chrono, election_nrc_chrono, yourobedient_nrc_chrono, bestofwives_nrc_chrono, worldwide_nrc_chrono, wholives_nrc_chrono), 
#   nrc_freq = c(alexham_nrc_freq, burrsir_nrc_freq, myshot_nrc_freq, storynight_nrc_freq, schuyler_nrc_freq, farmerref_nrc_freq, youllbeback_nrc_freq, righthand_nrc_freq, winter_nrc_freq, helpless_nrc_freq, satisfied_nrc_freq, storyreprise_nrc_freq, waitforit_nrc_freq, stayalive_nrc_freq, duel_nrc_freq, meetme_nrc_freq, enough_nrc_freq, gunsnships_nrc_freq, historyeyes_nrc_freq, yorktown_nrc_freq, whatcomes_nrc_freq, theodosia_nrc_freq, nonstop_nrc_freq, whatdimiss_nrc_freq, cabinet_nrc_freq, takeabreak_nrc_freq, sayno_nrc_freq, roomwhere_nrc_freq, schdefeat_nrc_freq, cabtwo_nrc_freq, washington_nrc_freq, onelasttime_nrc_freq, iknowhim_nrc_freq, adams_nrc_freq, weknow_nrc_freq, hurricane_nrc_freq, burn_nrc_freq, blowaway_nrc_freq, stayreprise_nrc_freq, quietuptown_nrc_freq, election_nrc_freq, yourobedient_nrc_freq, bestofwives_nrc_freq, worldwide_nrc_freq, wholives_nrc_freq), 
#   afinn_chrono = c(alexham_afinn_chrono, burrsir_afinn_chrono, myshot_afinn_chrono, storynight_afinn_chrono, schuyler_afinn_chrono, farmerref_afinn_chrono, youllbeback_afinn_chrono, righthand_afinn_chrono, winter_afinn_chrono, helpless_afinn_chrono, satisfied_afinn_chrono, storyreprise_afinn_chrono, waitforit_afinn_chrono, stayalive_afinn_chrono, duel_afinn_chrono, meetme_afinn_chrono, enough_afinn_chrono, gunsnships_afinn_chrono, historyeyes_afinn_chrono, yorktown_afinn_chrono, whatcomes_afinn_chrono, theodosia_afinn_chrono, nonstop_afinn_chrono, whatdimiss_afinn_chrono, cabinet_afinn_chrono, takeabreak_afinn_chrono, sayno_afinn_chrono, roomwhere_afinn_chrono, schdefeat_afinn_chrono, cabtwo_afinn_chrono, washington_afinn_chrono, onelasttime_afinn_chrono, iknowhim_afinn_chrono, adams_afinn_chrono, weknow_afinn_chrono, hurricane_afinn_chrono, burn_afinn_chrono, blowaway_afinn_chrono, stayreprise_afinn_chrono, quietuptown_afinn_chrono, election_afinn_chrono, yourobedient_afinn_chrono, bestofwives_afinn_chrono, worldwide_afinn_chrono, wholives_afinn_chrono), 
#   afinn_freq = c(alexham_afinn_freq, burrsir_afinn_freq, myshot_afinn_freq, storynight_afinn_freq, schuyler_afinn_freq, farmerref_afinn_freq, youllbeback_afinn_freq, righthand_afinn_freq, winter_afinn_freq, helpless_afinn_freq, satisfied_afinn_freq, storyreprise_afinn_freq, waitforit_afinn_freq, stayalive_afinn_freq, duel_afinn_freq, meetme_afinn_freq, enough_afinn_freq, gunsnships_afinn_freq, historyeyes_afinn_freq, yorktown_afinn_freq, whatcomes_afinn_freq, theodosia_afinn_freq, nonstop_afinn_freq, whatdimiss_afinn_freq, cabinet_afinn_freq, takeabreak_afinn_freq, sayno_afinn_freq, roomwhere_afinn_freq, schdefeat_afinn_freq, cabtwo_afinn_freq, washington_afinn_freq, onelasttime_afinn_freq, iknowhim_afinn_freq, adams_afinn_freq, weknow_afinn_freq, hurricane_afinn_freq, burn_afinn_freq, blowaway_afinn_freq, stayreprise_afinn_freq, quietuptown_afinn_freq, election_afinn_freq, yourobedient_afinn_freq, bestofwives_afinn_freq, worldwide_afinn_freq, wholives_afinn_freq)
# )



  
# visualize data


# nrc and afinn song bars (top freq)
# nrc and afinn singer bars (top freq)
# afinn character line graphs (chrono)
# afinn song line graphs (chrono)
# pie charts? by sentiment category, each character and song?
  #percentage style, absolute value sum, not normal sentiment sum

#profit?? hopefully???
