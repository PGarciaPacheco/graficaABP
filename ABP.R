setwd("~/graficaABP")
dat <- read.csv2("measles-notification-rate-12-months-December-2020.csv", sep = ",", stringsAsFactors = TRUE)

dat1 <- data.frame(Pais = dat$X, "Casos per milio" = dat$X.2)
dat2 <- dat1[-c(1,31,32,33),]

dat4 <- data.frame(Pais = dat2$Pais, "Casos per milio" = as.numeric(as.character(dat2$Casos.per.milio)))

dat5 <- dat4[rev(order(dat4$Casos.per.milio)),]

g <- barplot(t(as.matrix(as.numeric(dat5[, 2]))),
        beside = TRUE,
        names.arg = dat2$Pais,
        density = NULL,
        col = c("lightblue","purple"),
        ylim = c(0,60),
        main = "Casos de xarampio a Europa 2020",
        las = 2)

text(g, dat5$Casos.per.milio, paste(dat5$Casos.per.milio, sep="") ,cex=0.5)

