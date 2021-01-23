setwd("~/graficaABP")
dat <- read.csv("measles-notification-rate-12-months-December-2020.csv", sep = ",", stringsAsFactors = TRUE)
dat1 <- data.frame(Pais = dat$X, "Casos" = dat$X.2)
dat2 <- dat1[-c(1,31,32,33),]


