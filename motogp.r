library(robotstxt)
library(dplyr)
library(rvest)
url <- "https://motorsporttickets.com/blog/motogp-records-most-wins-pole-positions-championships-and-more/"
path = paths_allowed(url)
#html from website
web = read_html(url)
View(web)

position  <- web %>% html_nodes(".is-style-stripes:nth-child(18) .has-text-align-left:nth-child(1)")%>% html_text()
View(position)

poles <- web %>%html_nodes(".is-style-stripes:nth-child(18) .has-text-align-left~ .has-text-align-left+ .has-text-align-left") %>% html_text()
View(poles)

rider <- web %>%html_nodes(".is-style-stripes:nth-child(18) .has-text-align-left:nth-child(2)") %>% html_text()
View(rider)


#creating dataframe
mostpoles <- data.frame(position,poles,rider)
View(mostpoles)
#save
write.csv(mostpoles,"motogp.csv")
