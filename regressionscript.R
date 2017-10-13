# Load data and libraries
dataset <- read.csv("dataset_mlm.csv")
library(lme4)
summary(dataset$Muncipality.ID)

# Plot
plot(dataset$SchCoverage,dataset$Incidencerate, pch=16, col=rgb(0,0,204,102,maxColorValue=255))
olsLine <- lm(dataset$SchCoverage ~ dataset$Incidencerate)
abline(olsLine, col="red")

# Linear regressions

lmodel1 <- lm(Incidencerate ~ PovPercent + Hospitalrate, data = dataset)
summary(lmodel1)

lmodel2 <- lm(Incidencerate ~ PovPercent + SchCoverage , data = dataset)
summary(lmodel2)

# Center the variables

require(stats)
Incidencerate <- matrix(1:327, ncol = 1)
(centered.Incidencerate <- scale(Incidencerate, scale = FALSE))
cov(centered.scaled.Incidencerate <- scale(Incidencerate))
SchCoverage <- matrix(1:327, ncol = 1)
(centered.SchCoverage <- scale(SchCoverage, scale = FALSE))
cov(centered.scaled.SchCoverage <- scale(SchCoverage))
Hospitalrate <- matrix(1:327, ncol = 1)
(centered.Hospitalrate <- scale(Hospitalrate, scale = FALSE))
cov(centered.scaled.Hospitalrate <- scale(Hospitalrate))



qqnorm(residuals(olsLine))
qqline(residuals(olsLine))


# Mixed model for geo-divisions (level 2)

mixedmod2 <- lmer(centered.scaled.Incidencerate ~ centered.scaled.Hospitalrate + centered.scaled.SchCoverage + (1 + centered.scaled.SchCoverage | DivisionNew) , data = dataset)
summary(mixedmod2)
