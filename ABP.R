setwd("~/graficaABP")
dat <- read.csv("measles-notification-rate-12-months-December-2020.csv", sep = ",", stringsAsFactors = TRUE)
dat

dat1 <- data.frame(Pais = dat$X, "Casos per milió" = dat$X.2)
dat2 <- dat1[-c(1),]
dat2

dat3 <- sort(dat2$Casos.per.milió, decreasing = TRUE)
dat3

horiz = TRUE

