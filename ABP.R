setwd("~/graficaABP")
dat <- read.csv2("measles-notification-rate-12-months-December-2020.csv", sep = ",", stringsAsFactors = TRUE)

dat1 <- data.frame(Pais = dat$X, "Casos per milió" = dat$X.2)
dat2 <- dat1[-c(1,31,32,33),]

dat3 <- as.numeric(as.character(dat2$Casos.per.milió))

dat4 <- data.frame(Pais = dat2$Pais, "Casos per milió" = as.numeric(as.character(dat2$Casos.per.milió)))

dat5 <- dat4[rev(order(dat4$Casos.per.milió)),]

par(mar=c(6,3,3,1))

g <- barplot(t(as.matrix(as.numeric(dat5[, 2]))),
             beside = TRUE,
             names.arg = dat2$Pais,
             density = NULL,
             col = c("lightblue","purple"),
             ylim = c(0,63),
             main = "Casos per milió de xarampió a Europa 2020",
             las = 2,
             cex.main = 1,
             cex.axis = 0.8,
             cex.names = 0.8)

text(g, dat5$Casos.per.milió+3.4, paste(round(dat5$Casos.per.milió, digits = 2)), srt=68, cex=0.7)

