
#Simple Dataset
Year <- c(2009, 2010, 2011, 2012, 2013, 2014)
Deaths <- c(2057, 1731, 1797, 1637, 1608, 1658)

DFYear <-data.frame(Year, Deaths)
DFYear

#LM <- lm(DFYear$Deaths~DFYear$Year, data=DFYear)
LM <- lm(Deaths~Year, data=DFYear)

LM

LMNew <- predict(LM)

Predictedlm <- data.frame(DFYear, LMNew)
Predictedlm


#Pass the new data to predict

Y1<-c(2015,2016)

DFYear_New<-data.frame(Year=Y1)

#Predict death for new value using LM object whcih holds the lm function

PredictDeath <- predict(LM, newdata=DFYear_New) 
PredictDeath

PredictedResult<-data.frame(DFYear_New,Deaths=PredictDeath)
PredictedResult

#Plot for existing data

plot(DFYear, ylim=range(1200:2000))

abline(LM)

#?plot

#plot for both exising data and new 

#Merge the resultsets
Total<-merge(DFYear,PredictedResult, all=TRUE)
Total

plot(Total, ylim=range(1400:2100))

abline(LM)



