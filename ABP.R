setwd("~/graficaABP")
dat <- read.csv("measles-notification-rate-12-months-December-2020.csv", sep = ",", stringsAsFactors = TRUE)
dat1 <- data.frame(País = dat$X, "Casos per milió" = dat$X.2)
dat2 <- dat1[-c(1,31,32,33),]


dat3 <- as.numeric(as.character(dat2$Casos.per.milió))

dat4 <- data.frame(Pais = dat2$Pais, "Casos per milió" = as.numeric(as.character(dat2$Casos.per.milió)))

dat5 <- dat4[rev(order(dat4$Casos.per.milió)),]
dat5

g <- barplot(t(as.matrix(as.numeric(dat5[, 2]))),
        beside = TRUE,
        names.arg = dat2$País,,
        density = NULL,
        col = c("lightblue","purple"),
        ylim = c(0,60),
        main = "Casos de xarampió a Europa 2020",
        las = 2,
        horiz = TRUE)

text(g, dat5$Casos.per.milió, paste(dat5$Casos.per.milió, sep="") ,cex=0.5)
