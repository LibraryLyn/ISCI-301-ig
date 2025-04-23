# install and load packages
install.packages("tidyverse")
install.packages("tidytext")
install.packages("textdata")

library(tidyverse)
library(tidytext)
library(textdata)

# read external file
csv_ham_lyrics <- read_csv("ham_lyrics.csv")
ham_lyrics <- data.frame(csv_ham_lyrics)
View(ham_lyrics)

# extract lyrics by songs and clean
song_titles <- ham_lyrics %>% distinct(title)
song_titles
  alexham <- ham_lyrics %>% filter(title == "Alexander Hamilton") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  burrsir <- ham_lyrics %>% filter(title == "Aaron Burr, Sir") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  myshot <- ham_lyrics %>% filter(title == "My Shot") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  storynight <- ham_lyrics %>% filter(title == "The Story of Tonight") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  schuyler <- ham_lyrics %>% filter(title == "The Schuyler Sisters") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  farmerref <- ham_lyrics %>% filter(title == "Farmer Refuted") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  youllbeback <- ham_lyrics %>% filter(title == "You'll Be Back") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  righthand <- ham_lyrics %>% filter(title == "Right Hand Man") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  winter <- ham_lyrics %>% filter(title == "A Winter's Ball") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  helpless <- ham_lyrics %>% filter(title == "Helpless") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  satisfied <- ham_lyrics %>% filter(title == "Satisfied") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  storyreprise <- ham_lyrics %>% filter(title == "The Story of Tonight (Reprise)") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  waitforit <- ham_lyrics %>% filter(title == "Wait For It") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  stayalive <- ham_lyrics %>% filter(title == "Stay Alive") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  duel <- ham_lyrics %>% filter(title == "Ten Duel Commandments") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  meetme <- ham_lyrics %>% filter(title == "Meet Me Inside") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  enough <- ham_lyrics %>% filter(title == "That Would Be Enough") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  gunsnships <- ham_lyrics %>% filter(title == "Guns and Ships") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  historyeyes <- ham_lyrics %>% filter(title == "History Has Its Eyes On You") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  yorktown <- ham_lyrics %>% filter(title == "Yorktown (The World Turned Upside Down)") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  whatcomes <- ham_lyrics %>% filter(title == "What Comes Next?") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  theodosia <- ham_lyrics %>% filter(title == "Dear Theodosia") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  nonstop <- ham_lyrics %>% filter(title == "Non-Stop") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  whatdimiss <- ham_lyrics %>% filter(title == "What'd I Miss") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  cabinet <- ham_lyrics %>% filter(title == "Cabinet Battle #1") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  takeabreak <- ham_lyrics %>% filter(title == "Take A Break") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  sayno <- ham_lyrics %>% filter(title == "Say No To This") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  roomwhere <- ham_lyrics %>% filter(title == "The Room Where It Happens") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  schdefeat <- ham_lyrics %>% filter(title == "Schuyler Defeated") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  cabtwo <- ham_lyrics %>% filter(title == "Cabinet Battle #2") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  washington <- ham_lyrics %>% filter(title == "Washington On Your Side") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  onelasttime <- ham_lyrics %>% filter(title == "One Last Time") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  iknowhim <- ham_lyrics %>% filter(title == "I Know Him") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  adams <- ham_lyrics %>% filter(title == "The Adams Administration") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  weknow <- ham_lyrics %>% filter(title == "We Know") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  hurricane <- ham_lyrics %>% filter(title == "Hurricane") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  burn <- ham_lyrics %>% filter(title == "Burn") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  blowaway <- ham_lyrics %>% filter(title == "Blow Us All Away") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  stayreprise <- ham_lyrics %>% filter(title == "Stay Alive (Reprise)") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  quietuptown <- ham_lyrics %>% filter(title == "It's Quiet Uptown") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  election <- ham_lyrics %>% filter(title == "The Election of 1800") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  yourobedient <- ham_lyrics %>% filter(title == "Your Obedient Servant") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  bestofwives <- ham_lyrics %>% filter(title == "Best of Wives and Best of Women") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  worldwide <- ham_lyrics %>% filter(title == "The World Was Wide Enough") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
  wholives <- ham_lyrics %>% filter(title == "Who Lives, Who Dies, Who Tells Your Story") %>% unnest_tokens(word, lines) %>% anti_join(stop_words)

#SONGS AFINN (sorted by frequency)
  alexham_afinn_freq <- data.frame(table(alexham$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  burrsir_afinn_freq <- data.frame(table(burrsir$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  myshot_afinn_freq <- data.frame(table(myshot$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  storynight_afinn_freq <- data.frame(table(storynight$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  schuyler_afinn_freq <- data.frame(table(schuyler$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  farmerref_afinn_freq <- data.frame(table(farmerref$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  youllbeback_afinn_freq <- data.frame(table(youllbeback$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  righthand_afinn_freq <- data.frame(table(righthand$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  winter_afinn_freq <- data.frame(table(winter$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  helpless_afinn_freq <- data.frame(table(helpless$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  satisfied_afinn_freq <- data.frame(table(satisfied$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  storyreprise_afinn_freq <- data.frame(table(storyreprise$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  waitforit_afinn_freq <- data.frame(table(waitforit$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  stayalive_afinn_freq <- data.frame(table(stayalive$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  duel_afinn_freq <- data.frame(table(duel$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  meetme_afinn_freq <- data.frame(table(meetme$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  enough_afinn_freq <- data.frame(table(enough$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  gunsnships_afinn_freq <- data.frame(table(gunsnships$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  historyeyes_afinn_freq <- data.frame(table(historyeyes$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  yorktown_afinn_freq <- data.frame(table(yorktown$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  whatcomes_afinn_freq <- data.frame(table(whatcomes$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  theodosia_afinn_freq <- data.frame(table(theodosia$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  nonstop_afinn_freq <- data.frame(table(nonstop$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  whatdimiss_afinn_freq <- data.frame(table(whatdimiss$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  cabinet_afinn_freq <- data.frame(table(cabinet$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  takeabreak_afinn_freq <- data.frame(table(takeabreak$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  sayno_afinn_freq <- data.frame(table(sayno$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  roomwhere_afinn_freq <- data.frame(table(roomwhere$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  schdefeat_afinn_freq <- data.frame(table(schdefeat$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  cabtwo_afinn_freq <- data.frame(table(cabtwo$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  washington_afinn_freq <- data.frame(table(washington$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  onelasttime_afinn_freq <- data.frame(table(onelasttime$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  iknowhim_afinn_freq <- data.frame(table(iknowhim$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  adams_afinn_freq <- data.frame(table(adams$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  weknow_afinn_freq <- data.frame(table(weknow$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  hurricane_afinn_freq <- data.frame(table(hurricane$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  burn_afinn_freq <- data.frame(table(burn$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  blowaway_afinn_freq <- data.frame(table(blowaway$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  stayreprise_afinn_freq <- data.frame(table(stayreprise$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  quietuptown_afinn_freq <- data.frame(table(quietuptown$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  election_afinn_freq <- data.frame(table(election$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  yourobedient_afinn_freq <- data.frame(table(yourobedient$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  bestofwives_afinn_freq <- data.frame(table(bestofwives$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  worldwide_afinn_freq <- data.frame(table(worldwide$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))
  wholives_afinn_freq <- data.frame(table(wholives$word)) %>% arrange(desc(Freq)) %>% inner_join(get_sentiments("afinn"), by = c("Var1" = "word"))

#SONGS AFINN OVERALL SCORE 
sentiment_summing <- function(dfsent){
  runcount = 0
  if(nrow(dfsent) == 0){return(0)}else{
    for(i in 1:nrow(dfsent)){
      freq = dfsent[i, "Freq"]
      score = dfsent[i, "value"]
      runcount <- runcount + (freq*score)
  }}
  return(runcount)
}
 
  sentsum_alexham <- sentiment_summing(alexham_afinn_freq)
  sentsum_burrsir <- sentiment_summing(burrsir_afinn_freq)
  sentsum_myshot <- sentiment_summing(myshot_afinn_freq)
  sentsum_storynight <-  sentiment_summing(storynight_afinn_freq)
  sentsum_schuyler <- sentiment_summing(schuyler_afinn_freq)
  sentsum_farmerref <- sentiment_summing(farmerref_afinn_freq)
  sentsum_youllbeback <- sentiment_summing(youllbeback_afinn_freq)
  sentsum_righthand <- sentiment_summing(righthand_afinn_freq)
  sentsum_winter <- sentiment_summing(winter_afinn_freq)
  sentsum_helpless <- sentiment_summing(helpless_afinn_freq)
  sentsum_satisfied <- sentiment_summing(satisfied_afinn_freq)
  sentsum_storyreprise <- sentiment_summing(storyreprise_afinn_freq)
  sentsum_waitforit <- sentiment_summing(waitforit_afinn_freq)
  sentsum_stayalive <- sentiment_summing(stayalive_afinn_freq)
  sentsum_duel <- sentiment_summing(duel_afinn_freq)
  sentsum_meetme <- sentiment_summing(meetme_afinn_freq)
  sentsum_enough <- sentiment_summing(enough_afinn_freq)
  sentsum_gunsnships <- sentiment_summing(gunsnships_afinn_freq)
  sentsum_historyeyes <- sentiment_summing(historyeyes_afinn_freq)
  sentsum_yorktown <- sentiment_summing(yorktown_afinn_freq)
  sentsum_whatcomes <- sentiment_summing(whatcomes_afinn_freq)
  sentsum_theodosia <- sentiment_summing(theodosia_afinn_freq)
  sentsum_nonstop <- sentiment_summing(nonstop_afinn_freq)
  sentsum_whatdimiss <- sentiment_summing(whatdimiss_afinn_freq)
  sentsum_cabinet <- sentiment_summing(cabinet_afinn_freq)
  sentsum_takeabreak <- sentiment_summing(takeabreak_afinn_freq)
  sentsum_sayno <- sentiment_summing(sayno_afinn_freq)
  sentsum_roomwhere <- sentiment_summing(roomwhere_afinn_freq)
  sentsum_schdefeat <- sentiment_summing(schdefeat_afinn_freq)
  sentsum_cabtwo <- sentiment_summing(cabtwo_afinn_freq)
  sentsum_washington <- sentiment_summing(washington_afinn_freq)
  sentsum_onelasttime <- sentiment_summing(onelasttime_afinn_freq)
  sentsum_iknowhim <- sentiment_summing(iknowhim_afinn_freq)
  sentsum_adams <- sentiment_summing(adams_afinn_freq)
  sentsum_weknow <- sentiment_summing(weknow_afinn_freq)
  sentsum_hurricane <- sentiment_summing(hurricane_afinn_freq)
  sentsum_burn <- sentiment_summing(burn_afinn_freq)
  sentsum_blowaway <- sentiment_summing(blowaway_afinn_freq)
  sentsum_stayreprise <- sentiment_summing(stayreprise_afinn_freq)
  sentsum_quietuptown <- sentiment_summing(quietuptown_afinn_freq)
  sentsum_election <- sentiment_summing(election_afinn_freq)
  sentsum_yourobedient <- sentiment_summing(yourobedient_afinn_freq)
  sentsum_bestofwives <- sentiment_summing(bestofwives_afinn_freq)
  sentsum_worldwide <- sentiment_summing(worldwide_afinn_freq)
  sentsum_wholives <-sentiment_summing(wholives_afinn_freq)
  
# extract lyrics by singer (leads only)
ham_lyrics %>% distinct(speaker) #list all speakers and combinations of speakers
messy_burr_lyrics <- ham_lyrics %>% filter(speaker == "BURR" | 
                                             speaker == "BURR/HAMILTON/LAFAYETTE/LAURENS/MULLIGAN" | 
                                             speaker == "BURR/HAMILTON" | 
                                             speaker == "BURR/HAMILTON/LAURENS" | 
                                             speaker == "BURR/HAMILTON/LAURENS & ALL WOMEN (EXCEPT ELIZA)" | 
                                             speaker == "BURR & ENSEMBLE" | 
                                             speaker == "BURR/HAMILTON/LAURENS/LEE" | 
                                             speaker == "BURR & MEN" | 
                                             speaker == "BURR & COMPANY" | 
                                             speaker == "BURR & ALL WOMEN" | 
                                             speaker == "BURR & MEN & ALL WOMEN" | 
                                             speaker == "ANGELICA/BURR/ELIZA" | 
                                             speaker == "BURR/JEFFERSON" | 
                                             speaker == "BURR/JEFFERSON/MADISON" | 
                                             speaker == "BURR/JEFFERSON/MADISON & ENSEMBLE" | 
                                             speaker == "BURR/PHILIP" | 
                                             speaker == "BURR/HAMILTON & ENSEMBLE MEN" | 
                                             speaker == "ANGELICA/BURR")
messy_hamilton_lyrics <- ham_lyrics %>% filter(speaker == "HAMILTON" | 
                                                 speaker == "HAMILTON/LAFAYETTE/LAURENS/MULLIGAN" | 
                                                 speaker == "HAMILTON/LAFAYETTE/LAURENS/MULLIGAN & ENSEMBLE" | 
                                                 speaker == "HAMILTON/LAFAYETTE/MULLIGAN" | 
                                                 speaker == "HAMILTON & COMPANY" | 
                                                 speaker == "HAMILTON/LAURENS" | 
                                                 speaker == "HAMILTON/LAURENS & ENSEMBLE" | 
                                                 speaker == "SEABURY/HAMILTON" | 
                                                 speaker == "BURR/HAMILTON/LAFAYETTE/LAURENS/MULLIGAN" | 
                                                 speaker == "BURR/HAMILTON" | 
                                                 speaker == "BURR/HAMILTON/LAURENS" | 
                                                 speaker == "BURR/HAMILTON/LAURENS & ALL WOMEN (EXCEPT ELIZA)" | 
                                                 speaker == "ELIZA/HAMILTON & MEN & WOMEN" | 
                                                 speaker == "HAMILTON & MEN" | 
                                                 speaker == "HAMILTON/LAFAYETTE" | 
                                                 speaker == "HAMILTON/LAFAYETTE/LAURENS" | 
                                                 speaker == "BURR/HAMILTON/LAURENS/LEE" | 
                                                 speaker == "HAMILTON/WASHINGTON" | 
                                                 speaker == "HAMILTON/WASHINGTON & MEN" | 
                                                 speaker == "HAMILTON/LAFAYETTE/LAURENS/MULLIGAN/WASHINGTON" | 
                                                 speaker == "ANGELICA/HAMILTON" | speaker == "HAMILTON & ENSEMBLE" | 
                                                 speaker == "HAMILTON/JEFFERSON/MADISON/WASHINGTON" | 
                                                 speaker == "HAMILTON/PHILIP" | 
                                                 speaker == "BURR/HAMILTON & ENSEMBLE MEN")
messy_angelica_lyrics <- ham_lyrics %>% filter(speaker == "ANGELICA" | 
                                                 speaker == "ELIZA & ANGELICA & PEGGY/MARIA" | 
                                                 speaker == "ANGELICA/ELIZA/PEGGY & COMPANY" | 
                                                 speaker == "ANGELICA & MALE ENSEMBLE" | 
                                                 speaker == "ANGELICA/ELIZA/PEGGY" | 
                                                 speaker == "ANGELICA/ELIZA/PEGGY/WOMEN" | 
                                                 speaker == "ANGELICA/ELIZA/HAMILTON/PEGGY & WOMEN" | 
                                                 speaker == "ANGELICA/ELIZA/HAMILTON/PEGGY" | 
                                                 speaker == "ANGELICA & COMPANY" | 
                                                 speaker == "ANGELICA/ELIZA & ENSEMBLE WOMEN" | 
                                                 speaker == "ANGELICA/ELIZA" | 
                                                 speaker == "ANGELICA/BURR/ELIZA" | 
                                                 speaker == "ANGELICA/HAMILTON" | 
                                                 speaker == "ANGELICA/ELIZA/MARIA/WASHINGTON" | 
                                                 speaker == "ANGELICA & ENSEMBLE" | 
                                                 speaker == "ANGELICA & WOMEN" | 
                                                 speaker == "ANGELICA/BURR")
messy_eliza_lyrics <- ham_lyrics %>% filter(speaker == "ELIZA" | 
                                              speaker == "ELIZA & ANGELICA & PEGGY/MARIA" | 
                                              speaker == "ELIZA/PEGGY" | 
                                              speaker == "ANGELICA/ELIZA/PEGGY & COMPANY" | 
                                              speaker == "ANGELICA/ELIZA/PEGGY" | 
                                              speaker == "ANGELICA/ELIZA/PEGGY/WOMEN" | 
                                              speaker == "ANGELICA/ELIZA/HAMILTON/PEGGY & WOMEN" | 
                                              speaker == "ANGELICA/ELIZA/HAMILTON/PEGGY" | 
                                              speaker == "ELIZA & WOMEN" | 
                                              speaker == "ELIZA/HAMILTON & MEN & WOMEN" | 
                                              speaker == "ELIZA, MEN & WOMEN" | 
                                              speaker == "ANGELICA/ELIZA & ENSEMBLE WOMEN" | 
                                              speaker == "ANGELICA/ELIZA" | 
                                              speaker == "ANGELICA/BURR/ELIZA" | 
                                              speaker == "ELIZA/PHILIP" | 
                                              speaker == "ANGELICA/ELIZA/MARIA/WASHINGTON" | 
                                              speaker == "ELIZA & COMPANY")
burr_lyrics <- messy_burr_lyrics %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
hamilton_lyrics <- messy_hamilton_lyrics %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
angelica_lyrics <- messy_angelica_lyrics %>% unnest_tokens(word, lines) %>% anti_join(stop_words)
eliza_lyrics <- messy_eliza_lyrics %>% unnest_tokens(word, lines) %>% anti_join(stop_words)  
View(eliza_lyrics)

#LS frequency tables
freq_angelica <- data.frame(table(angelica_lyrics$word)) %>% arrange(desc(Freq))
freq_burr <- data.frame(table(burr_lyrics$word)) %>% arrange(desc(Freq))
freq_eliza <- data.frame(table(eliza_lyrics$word)) %>% arrange(desc(Freq))
freq_hamilton <- data.frame(table(hamilton_lyrics$word)) %>% arrange(desc(Freq))
View(freq_angelica)

#LS frequency NRC sentiments
angelica_nrc_freq <- inner_join(freq_angelica, get_sentiments("nrc"), by = c("Var1" = "word")) %>% count(sentiment)
burr_nrc_freq <- freq_burr %>% inner_join(get_sentiments("nrc"), by = c("Var1" = "word")) %>% count(sentiment)
eliza_nrc_freq <- freq_eliza %>% inner_join(get_sentiments("nrc"), by = c("Var1" = "word")) %>% count(sentiment)
hamilton_nrc_freq <- freq_hamilton %>% inner_join(get_sentiments("nrc"), by = c("Var1" = "word")) %>% count(sentiment)
View(angelica_nrc_freq)

#LS chronological AFINN sentiments
angelica_afinn_chrono <- angelica_lyrics %>% inner_join(get_sentiments("afinn")) %>% mutate(id = row_number()) %>% select(id, everything())
burr_afinn_chrono <- burr_lyrics %>% inner_join(get_sentiments("afinn")) %>% mutate(id = row_number()) %>% select(id, everything())
eliza_afinn_chrono <- eliza_lyrics %>% inner_join(get_sentiments("afinn")) %>% mutate(id = row_number()) %>% select(id, everything())
hamilton_afinn_chrono <- hamilton_lyrics %>% inner_join(get_sentiments("afinn"))%>% mutate(id = row_number()) %>% select(id, everything())
View(eliza_afinn_chrono)

#LS line graphs (AFINN chrono)
ggplot(angelica_afinn_chrono, aes(x = id, y = value)) + geom_line() + geom_point() + 
  labs(title = "Angelica", x = "words", y = "AFINN score") + theme_minimal() + 
  scale_y_continuous(breaks=c(-5,-3,-1,1,3,5), limits=c(-5, 5)) + 
  scale_x_continuous(breaks=angelica_afinn_chrono$id, label=angelica_afinn_chrono$word) + 
  theme(axis.text.x = element_text(angle=60, hjust=1, size=6))
ggplot(burr_afinn_chrono, aes(x = id, y = value)) + geom_line() + geom_point() +  
  labs(title = "Burr", x = "words", y = "AFINN score") + theme_minimal() + 
  scale_y_continuous(breaks=c(-5,-3,-1,1,3,5), limits=c(-5, 5)) + 
  scale_x_continuous(breaks=burr_afinn_chrono$id, label=burr_afinn_chrono$word) + 
  theme(axis.text.x = element_text(angle=60, hjust=1, size=6))
ggplot(eliza_afinn_chrono, aes(x = id, y = value)) + geom_line() + geom_point() +  
  labs(title = "Eliza", x = "words", y = "AFINN score") + theme_minimal() + 
  scale_y_continuous(breaks=c(-5,-3,-1,1,3,5), limits=c(-5, 5)) + 
  scale_x_continuous(breaks=eliza_afinn_chrono$id, label=eliza_afinn_chrono$word) + 
  theme(axis.text.x = element_text(angle=60, hjust=1, size=6))
ggplot(hamilton_afinn_chrono, aes(x = id, y = value)) + geom_line() + geom_point() +  
  labs(title = "Hamilton", x = "words", y = "AFINN score") + theme_minimal() + 
  scale_y_continuous(breaks=c(-5,-3,-1,1,3,5), limits=c(-5, 5)) + 
  scale_x_continuous(breaks=hamilton_afinn_chrono$id, label=hamilton_afinn_chrono$word) + 
  theme(axis.text.x = element_text(angle=60, hjust=1, size=6))

#LS bar charts (NRC freq)
ggplot(angelica_nrc_freq, aes(x = sentiment, y = n, fill = sentiment)) +
    geom_bar(stat = "identity") + theme_minimal() + theme(axis.text.x = element_text(angle = 75, hjust = 0.75)) + 
    labs(title = "Angelica lyrics NRC analysis", y = "Word Count", x = "Sentiment Category (Emotions)")
ggplot(burr_nrc_freq, aes(x = sentiment, y = n, fill = sentiment)) +
  geom_bar(stat = "identity") + theme_minimal() + theme(axis.text.x = element_text(angle = 75, hjust = 0.75)) + 
  labs(title = "Burr lyrics NRC analysis", y = "Word Count", x = "Sentiment Category (Emotions)")
ggplot(eliza_nrc_freq, aes(x = sentiment, y = n, fill = sentiment)) +
  geom_bar(stat = "identity") + theme_minimal() + theme(axis.text.x = element_text(angle = 75, hjust = 0.75)) + 
  labs(title = "Eliza lyrics NRC analysis", y = "Word Count", x = "Sentiment Category (Emotions)")
ggplot(hamilton_nrc_freq, aes(x = sentiment, y = n, fill = sentiment)) +
  geom_bar(stat = "identity") + theme_minimal() + theme(axis.text.x = element_text(angle = 75, hjust = 0.75)) + 
  labs(title = "Hamilton lyrics NRC analysis", y = "Word Count", x = "Sentiment Category (Emotions)")

#whole musical stuff i guess
whole_musical_maybe <- data.frame(
  tracks = c(1:45), 
  titles = c(song_titles), 
  scores = c(sentsum_alexham, sentsum_burrsir, sentsum_myshot, sentsum_storynight, sentsum_schuyler, 
             sentsum_farmerref, sentsum_youllbeback, sentsum_righthand, sentsum_winter, 
             sentsum_helpless, sentsum_satisfied, sentsum_storyreprise, sentsum_waitforit, 
             sentsum_stayalive, sentsum_duel, sentsum_meetme, sentsum_enough, sentsum_gunsnships, 
             sentsum_historyeyes, sentsum_yorktown, sentsum_whatcomes, sentsum_theodosia, 
             sentsum_nonstop, sentsum_whatdimiss, sentsum_cabinet, sentsum_takeabreak, sentsum_sayno, 
             sentsum_roomwhere, sentsum_schdefeat, sentsum_cabtwo, sentsum_washington, 
             sentsum_onelasttime, sentsum_iknowhim, sentsum_adams, sentsum_weknow, sentsum_hurricane, 
             sentsum_burn, sentsum_blowaway, sentsum_stayreprise, sentsum_quietuptown, 
             sentsum_election, sentsum_yourobedient, sentsum_bestofwives, sentsum_worldwide, 
             sentsum_wholives)
)
View(whole_musical_maybe)

#whole musical line graph (AFINN)
ggplot(whole_musical_maybe, aes(x = tracks, y = scores)) + geom_line(color = "#545454") + geom_point(color = "#c2a00c") + 
  labs(title = "Whole Musical Sentiment Progression", x = "tracks", y = "AFINN score") + theme_minimal() + 
  scale_x_continuous(breaks=whole_musical_maybe$tracks, label=whole_musical_maybe$title) + 
  theme(axis.text.x = element_text(angle=60, hjust=1, size=6))

