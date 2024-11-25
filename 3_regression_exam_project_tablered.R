tablered=read.csv(file = "/home/nycolasp/Dropbox/DataAnalyst/datasets/wine+quality/winequality-red.csv",header = TRUE, sep = ";")
modelQuality = lm(tablered$quality ~ tablered$density + tablered$pH)
summary(modelQuality)
