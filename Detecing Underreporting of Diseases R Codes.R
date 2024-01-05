library(forecast)
library(mice)
library(Metrics)
library(readxl)
library(stats)

Health_Dataset <- read_excel("D:/Data for Research/DOH/Detecting Underreporting/Health_Dataset.xlsx")

###########################################
####           Imputation              ####
###########################################

###########################################
#       Vaccine Preventable Diseases      #
###########################################

#Acute Flaccid Paralysis
#AFP <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$`Acute Flaccid Paralysis (AFP)`, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$`Acute Flaccid Paralysis (AFP)`, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#AFP <- mice(AFP, m = 5, maxit = 50, method = "pmm")
#AFP <- complete(AFP)
#write.csv(AFP,"D:/Data for Research/DOH/Detecting Underreporting/AFP.csv")
AFP <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/AFP.csv")
AFP <- ts(AFP$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Diphtheria
#Diphtheria <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$Diphtheria, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$Diphtheria, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Diphtheria <- mice(Diphtheria, m = 5, maxit = 50, method = "pmm")
#Diphtheria <- complete(Diphtheria)
#write.csv(Diphtheria,"D:/Data for Research/DOH/Detecting Underreporting/Diphtheria.csv")
Diphtheria <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Diphtheria.csv")
Diphtheria <- ts(Diphtheria$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Measles
#Measles <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$Measles, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$Measles, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Measles <- mice(Measles, m = 5, maxit = 50, method = "pmm")
#Measles <- complete(Measles)
#write.csv(Measles,"D:/Data for Research/DOH/Detecting Underreporting/Measles.csv")
Measles <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Measles.csv")
Measles <- ts(Measles$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Rubella
#Rubella <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$Rubella, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$Rubella, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Rubella <- mice(Rubella, m = 5, maxit = 50, method = "pmm")
#Rubella <- complete(Rubella)
#write.csv(Rubella,"D:/Data for Research/DOH/Detecting Underreporting/Rubella.csv")
Rubella <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Rubella.csv")
Rubella <- ts(Rubella$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Neonatal Tetanus
#Neonatal_Tetanus <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$`Neonatal Tetanus`, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$`Neonatal Tetanus`, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Neonatal_Tetanus <- mice(Neonatal_Tetanus, m = 5, maxit = 50, method = "pmm")
#Neonatal_Tetanus <- complete(Neonatal_Tetanus)
#write.csv(Neonatal_Tetanus,"D:/Data for Research/DOH/Detecting Underreporting/Neonatal_Tetanus.csv")
Neonatal_Tetanus <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Neonatal_Tetanus.csv")
Neonatal_Tetanus <- ts(Neonatal_Tetanus$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Non-Neonatal Tetanus
#Non_Neonatal_Tetanus <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$`Non-neonatal Tetanus`, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$`Non-neonatal Tetanus`, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Non_Neonatal_Tetanus <- mice(Non_Neonatal_Tetanus, m = 5, maxit = 50, method = "pmm")
#Non_Neonatal_Tetanus <- complete(Non_Neonatal_Tetanus)
#write.csv(Non_Neonatal_Tetanus,"D:/Data for Research/DOH/Detecting Underreporting/Non_Neonatal_Tetanus.csv")
Non_Neonatal_Tetanus <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Non_Neonatal_Tetanus.csv")
Non_Neonatal_Tetanus <- ts(Non_Neonatal_Tetanus$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Pertussis
#Pertussis <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$Pertussis, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$Pertussis, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Pertussis <- mice(Pertussis, m = 5, maxit = 50, method = "pmm")
#Pertussis <- complete(Pertussis)
#write.csv(Pertussis,"D:/Data for Research/DOH/Detecting Underreporting/Pertussis.csv")
Pertussis <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Pertussis.csv")
Pertussis <- ts(Pertussis$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Visualization of Vaccine Preventable Diseases
par(mfrow = c(3, 1))
par(oma = c(0, 0, 3, 0))

ts.plot(AFP, Diphtheria, Rubella,
        col=c("blue", "red", "green"),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("topright", legend=c("AFP", "Diphtheria", "Rubella"),
       col=c("blue", "red", "green"), lty=1, cex=0.7,inset=0.01, lwd = 2)


ts.plot(Neonatal_Tetanus, Non_Neonatal_Tetanus, Pertussis,
        col=c("blue", "red", "green"),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("topright", legend=c("Neonatal Tetanus", "Non-Neonatal Tetanus", "Pertussis"),
       col=c("blue", "red", "green"), lty=1, cex=0.7,inset=0.01, lwd = 2)

ts.plot(Measles,
        col=c("blue"),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("topright", legend=c("Measles"),
       col=c("blue"), lty=1, cex=0.7,inset=0.01, lwd = 2)
mtext("Disease Cases for Vaccine Preventable Diseases", outer = TRUE, side = 3, line = 1, cex = 1.5)


###########################################
#          Vector Borne Diseases          #
###########################################

#Chikungunya
#Chikungunya <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$Chikungunya, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$Chikungunya, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Chikungunya <- mice(Chikungunya, m = 5, maxit = 50, method = "pmm")
#Chikungunya <- complete(Chikungunya)
#write.csv(Chikungunya,"D:/Data for Research/DOH/Detecting Underreporting/Chikungunya.csv")
Chikungunya <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Chikungunya.csv")
Chikungunya <- ts(Chikungunya$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Dengue
#Dengue <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$Dengue, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$Dengue, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Dengue <- mice(Dengue, m = 5, maxit = 50, method = "pmm")
#Dengue <- complete(Dengue)
#write.csv(Dengue,"D:/Data for Research/DOH/Detecting Underreporting/Dengue.csv")
Dengue <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Dengue.csv")
Dengue <- ts(Dengue$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Visualization of Vector Borne Diseases

par(mfrow = c(2, 1))

ts.plot(Chikungunya,
        col=c("blue"),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("topright", legend=c("Chikungunya"),
       col=c("blue"), lty=1, cex=0.7,inset=0.01, lwd = 2)

ts.plot(Dengue,
        col=c("red"),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("topleft", legend=c("Dengue"),
       col=c("red"), lty=1, cex=0.7,inset=0.01, lwd = 2)

mtext("Disease Cases for Vector-Borne Diseases", outer = TRUE, side = 3, line = 1, cex = 1.5)

###########################################
#            Zoonotic Diseases            #
###########################################

#Leptospirosis
#Leptospirosis <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$Leptospirosis, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$Leptospirosis, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Leptospirosis <- mice(Leptospirosis, m = 5, maxit = 50, method = "pmm")
#Leptospirosis <- complete(Leptospirosis)
#write.csv(Leptospirosis,"D:/Data for Research/DOH/Detecting Underreporting/Leptospirosis.csv")
Leptospirosis <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Leptospirosis.csv")
Leptospirosis <- ts(Leptospirosis$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Rabies
#Rabies <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$Rabies, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$Rabies, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Rabies <- mice(Rabies, m = 5, maxit = 50, method = "pmm")
#Rabies <- complete(Rabies)
#write.csv(Rabies,"D:/Data for Research/DOH/Detecting Underreporting/Rabies.csv")
Rabies <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Rabies.csv")
Rabies <- ts(Rabies$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Visualization of Zoonotic Diseases

par(mfrow = c(2, 1))

ts.plot(Leptospirosis,
        col=c("blue"),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("topright", legend=c("Leptospirosis"),
       col=c("blue"), lty=1, cex=0.7,inset=0.01, lwd = 2)

ts.plot(Rabies,
        col=c("red"),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("top", legend=c("Rabies"),
       col=c("red"), lty=1, cex=0.7,inset=0.01, lwd = 2)

mtext("Disease Cases for Zoonotic Diseases", outer = TRUE, side = 3, line = 1, cex = 1.5)

###########################################
#     Food- and Water-Borne Diseases      #
###########################################

#Acute Bloody Diarrhea
#ABD <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$`Acute Bloody Diarrhea`, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$`Acute Bloody Diarrhea`, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#ABD <- mice(ABD, m = 5, maxit = 50, method = "pmm")
#ABD <- complete(ABD)
#write.csv(ABD,"D:/Data for Research/DOH/Detecting Underreporting/ABD.csv")
ABD <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/ABD.csv")
ABD <- ts(ABD$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Hepatitis A
#Hepatitis_A <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$`Hepatitis A`, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$`Hepatitis A`, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Hepatitis_A <- mice(Hepatitis_A, m = 5, maxit = 50, method = "pmm")
#Hepatitis_A <- complete(Hepatitis_A)
#write.csv(Hepatitis_A,"D:/Data for Research/DOH/Detecting Underreporting/Hepatitis_A.csv")
Hepatitis_A <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Hepatitis_A.csv")
Hepatitis_A <- ts(Hepatitis_A$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Cholera
#Cholera <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$Cholera, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$Cholera, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Cholera <- mice(Cholera, m = 5, maxit = 50, method = "pmm")
#Cholera <- complete(Cholera)
#write.csv(Cholera,"D:/Data for Research/DOH/Detecting Underreporting/Cholera.csv")
Cholera <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Cholera.csv")
Cholera <- ts(Cholera$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Rotavirus
#Rotavirus <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$Rotavirus, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$Rotavirus, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Rotavirus <- mice(Rotavirus, m = 5, maxit = 50, method = "pmm")
#Rotavirus <- complete(Rotavirus)
#write.csv(Rotavirus,"D:/Data for Research/DOH/Detecting Underreporting/Rotavirus.csv")
Rotavirus <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Rotavirus.csv")
Rotavirus <- ts(Rotavirus$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Typhoid Fever
#Typhoid_Fever <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$`Typhoid Fever`, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$`Typhoid Fever`, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Typhoid_Fever <- mice(Typhoid_Fever, m = 5, maxit = 50, method = "pmm")
#Typhoid_Fever <- complete(Typhoid_Fever)
#write.csv(Typhoid_Fever,"D:/Data for Research/DOH/Detecting Underreporting/Typhoid_Fever.csv")
Typhoid_Fever <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Typhoid_Fever.csv")
Typhoid_Fever <- ts(Typhoid_Fever$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Visualization of Food- and Water-Borne Diseases

par(mfrow = c(2, 1))

ts.plot(ABD, Typhoid_Fever,
        col=c("blue","red"),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("topright", legend=c("Acute Bloody Diarrhea", "Typhoid Fever"),
       col=c("blue","red"), lty=1, cex=0.7,inset=0.01, lwd = 2)

ts.plot(Hepatitis_A,Cholera,Rotavirus,
        col=c("blue","red",'green'),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("topright", legend=c("Hepatitis A", "Cholera", "Rotavirus"),
       col=c("blue",'red','green'), lty=1, cex=0.7,inset=0.01, lwd = 2)

mtext("Disease Cases for Food- and Water-Borne Diseases", outer = TRUE, side = 3, line = 1, cex = 1.5)

###########################################
#             Other Diseases              #
###########################################

#Influenza-Like Illness (ILI)
#ILI <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$`Influenza-Like Illness (ILI)`, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$`Influenza-Like Illness (ILI)`, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#ILI <- mice(ILI, m = 5, maxit = 50, method = "pmm")
#ILI <- complete(ILI)
#write.csv(ILI,"D:/Data for Research/DOH/Detecting Underreporting/ILI.csv")
ILI <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/ILI.csv")
ILI <- ts(ILI$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Meningoccocal Disease
#Meningoccocal_Disease <- data.frame(Cases = as.matrix(
#                      ts(Health_Dataset$`Meningoccocal Disease`, 
#                         frequency = 52, start = c(2017,1), end = c(2021, 52))), 
#                  Year = time(
#                      ts(Health_Dataset$`Meningoccocal Disease`, 
#                          frequency = 52, start = c(2017,1), end = c(2021, 52))))
#Meningoccocal_Disease <- mice(Meningoccocal_Disease, m = 5, maxit = 50, method = "pmm")
#Meningoccocal_Disease <- complete(Meningoccocal_Disease)
#write.csv(Meningoccocal_Disease,"D:/Data for Research/DOH/Detecting Underreporting/Meningoccocal_Disease.csv")
Meningoccocal_Disease <- read.csv("D:/Data for Research/DOH/Detecting Underreporting/Meningoccocal_Disease.csv")
Meningoccocal_Disease <- ts(Meningoccocal_Disease$Cases, frequency = 52, start = c(2017,1), end = c(2021, 52))

#Visualization of Other Diseases

par(mfrow = c(2, 1))

ts.plot(ILI,
        col=c("blue"),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("topright", legend=c("Influence-Like Illness"),
       col=c("blue"), lty=1, cex=0.7,inset=0.01, lwd = 2)

ts.plot(Meningoccocal_Disease,
        col=c("red"),
        xlab="Time", ylab="Cases", main="", lwd = 2)
legend("topleft", legend=c("Meningoccocal Disease"),
       col=c("red"), lty=1, cex=0.7,inset=0.01, lwd = 2)

mtext("Disease Cases for Other Diseases", outer = TRUE, side = 3, line = 1, cex = 1.5)

###########################################
##      Model Fitting and Evaluation     ##
###########################################

#Acute Flaccid Paralysis (AFP)
AFP_Train_Set <- window(AFP, end = c(2019,52))
AFP_COVID_Set <- window(AFP, start = c(2020,1), end = c(2021,52))

AFP_ARIMA <- auto.arima(AFP_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(AFP_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(1,0,1) with non-zero mean
#Q* = 20.935, df = 29, p-value = 0.8615
#Model df: 2.   Total lags used: 31

rmse(AFP_ARIMA$x,AFP_ARIMA$fitted) #15.38615
mae(AFP_ARIMA$x,AFP_ARIMA$fitted) #8.066484

AFP_Holt_Winters <- HoltWinters(AFP_Train_Set)
checkresiduals(AFP_Holt_Winters)
Box.test(residuals(AFP_Holt_Winters), type = "Lj")
#Box-Ljung test
#data:  residuals(AFP_Holt_Winters)
#X-squared = 0.11132, df = 1, p-value = 0.7386

rmse(AFP_Holt_Winters$x,AFP_Holt_Winters$fitted) #21.64263
mae(AFP_Holt_Winters$x,AFP_Holt_Winters$fitted) #12.32739

AFP_NNAR <- nnetar(AFP_Train_Set)
checkresiduals(AFP_NNAR)
Box.test(residuals(AFP_NNAR), type = "Lj")
#Box-Ljung test
#data:  residuals(AFP_NNAR)
#X-squared = 0.94797, df = 1, p-value = 0.3302

rmse(AFP_NNAR$x[which(!is.na(AFP_NNAR$fitted))],AFP_NNAR$fitted[which(!is.na(AFP_NNAR$fitted))]) #6.174331
mae(AFP_NNAR$x[which(!is.na(AFP_NNAR$fitted))],AFP_NNAR$fitted[which(!is.na(AFP_NNAR$fitted))]) #4.212576

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Acute Flaccid Paralysis is NNAR(4,1,3)[52] 

#Diphtheria
Diphtheria_Train_Set <- window(Diphtheria, end = c(2019,52))
Diphtheria_COVID_Set <- window(Diphtheria, start = c(2020,1), end = c(2021,52))

Diphtheria_ARIMA <- auto.arima(Diphtheria_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Diphtheria_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(0,0,3)(0,0,1)[52] with non-zero mean
#Q* = 71.889, df = 27, p-value = 6.006e-06
#Model df: 4.   Total lags used: 31

rmse(Diphtheria_ARIMA$x,Diphtheria_ARIMA$fitted) #3.608523
mae(Diphtheria_ARIMA$x,Diphtheria_ARIMA$fitted) #2.635084

Diphtheria_Holt_Winters <- HoltWinters(Diphtheria_Train_Set)
checkresiduals(Diphtheria_Holt_Winters)
Box.test(residuals(Diphtheria_Holt_Winters), type = "Lj")
#Box-Ljung test
#data:  residuals(Diphtheria_Holt_Winters)
#X-squared = 4.0576, df = 1, p-value = 0.04397

rmse(Diphtheria_Holt_Winters$x,Diphtheria_Holt_Winters$fitted) #5.205698
mae(Diphtheria_Holt_Winters$x,Diphtheria_Holt_Winters$fitted) #3.821104

Diphtheria_NNAR <- nnetar(Diphtheria_Train_Set)
checkresiduals(Diphtheria_NNAR)
Box.test(residuals(Diphtheria_NNAR), type = "Lj")
#	Box-Ljung test
#data:  residuals(Diphtheria_NNAR)
#X-squared = 0.06235, df = 1, p-value = 0.8028

rmse(Diphtheria_NNAR$x[which(!is.na(Diphtheria_NNAR$fitted))],
     Diphtheria_NNAR$fitted[which(!is.na(Diphtheria_NNAR$fitted))]) #2.125455
mae(Diphtheria_NNAR$x[which(!is.na(Diphtheria_NNAR$fitted))],
    Diphtheria_NNAR$fitted[which(!is.na(Diphtheria_NNAR$fitted))]) #1.567205

#Only the NNAR model has the  satisfies the Ljung-Box test which indicates that the model was a good fit.
#Based on the Error Metrics, the appropriate model for Diphtheria is NNAR(6,1,4)[52] 

#Measles
Measles_Train_Set <- window(Measles, end = c(2019,52))
Measles_COVID_Set <- window(Measles, start = c(2020,1), end = c(2021,52))

Measles_ARIMA <- auto.arima(Measles_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Measles_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(1,0,3) with non-zero mean
#Q* = 15.194, df = 27, p-value = 0.9666
#Model df: 4.   Total lags used: 31

rmse(Measles_ARIMA$x,Measles_ARIMA$fitted) #390.2789
mae(Measles_ARIMA$x,Measles_ARIMA$fitted) #171.0375

Measles_Holt_Winters <- HoltWinters(Measles_Train_Set)
checkresiduals(Measles_Holt_Winters)
Box.test(residuals(Measles_Holt_Winters),type = "Lj")
#Box-Ljung test
#data:  residuals(Measles_Holt_Winters)
#X-squared = 0.39516, df = 1, p-value = 0.5296

rmse(Measles_Holt_Winters$x,Measles_Holt_Winters$fitted) #644.0097
mae(Measles_Holt_Winters$x,Measles_Holt_Winters$fitted) #304.9563

Measles_NNAR <- nnetar(Measles_Train_Set)
checkresiduals(Measles_NNAR)
Box.test(residuals(Measles_NNAR),type = "Lj")
#Box-Ljung test
#data:  residuals(Measles_NNAR)
#X-squared = 0.33236, df = 1, p-value = 0.5643

rmse(Measles_NNAR$x[which(!is.na(Measles_NNAR$fitted))],
     Measles_NNAR$fitted[which(!is.na(Measles_NNAR$fitted))]) #65.93102
mae(Measles_NNAR$x[which(!is.na(Measles_NNAR$fitted))],
    Measles_NNAR$fitted[which(!is.na(Measles_NNAR$fitted))]) #41.06534

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Measles is NNAR(9,1,6)[52]

#Rubella
Rubella_Train_Set <- window(Rubella, end = c(2019,52))
Rubella_COVID_Set <- window(Rubella, start = c(2020,1), end = c(2021,52))

Rubella_ARIMA <- auto.arima(Rubella_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Rubella_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(0,0,0)(1,0,0)[52] with non-zero mean
#Q* = 17.679, df = 30, p-value = 0.9635
#Model df: 1.   Total lags used: 31


rmse(Rubella_ARIMA$x,Rubella_ARIMA$fitted) #23.23523
mae(Rubella_ARIMA$x,Rubella_ARIMA$fitted) #11.18504

Rubella_Holt_Winters <- HoltWinters(Rubella_Train_Set)
checkresiduals(Rubella_Holt_Winters)
Box.test(residuals(Rubella_Holt_Winters),type = "Lj")
#Box-Ljung test
#data:  residuals(Rubella_Holt_Winters)
#X-squared = 0.032887, df = 1, p-value = 0.8561

rmse(Rubella_Holt_Winters$x,Rubella_Holt_Winters$fitted) #23.48409
mae(Rubella_Holt_Winters$x,Rubella_Holt_Winters$fitted) #11.19497

Rubella_NNAR <- nnetar(Rubella_Train_Set)
checkresiduals(Rubella_NNAR)
Box.test(residuals(Rubella_NNAR),type = "Lj")
#Box-Ljung test
#data:  residuals(Rubella_NNAR)
#X-squared = 0.31239, df = 1, p-value = 0.5762

rmse(Rubella_NNAR$x[which(!is.na(Rubella_NNAR$fitted))],
     Rubella_NNAR$fitted[which(!is.na(Rubella_NNAR$fitted))]) #19.06983
mae(Rubella_NNAR$x[which(!is.na(Rubella_NNAR$fitted))],
    Rubella_NNAR$fitted[which(!is.na(Rubella_NNAR$fitted))]) #9.148245

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Rubella is NNAR(1,1,2)[52]

#Neonatal Tetanus
Neonatal_Tetanus_Train_Set <- window(Neonatal_Tetanus, end = c(2019,52))
Neonatal_Tetanus_COVID_Set <- window(Neonatal_Tetanus, start = c(2020,1), end = c(2021,52))

Neonatal_Tetanus_ARIMA <- auto.arima(Neonatal_Tetanus_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Neonatal_Tetanus_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(0,0,0) with non-zero mean
#Q* = 34.574, df = 31, p-value = 0.301
#Model df: 0.   Total lags used: 31

rmse(Neonatal_Tetanus_ARIMA$x,Neonatal_Tetanus_ARIMA$fitted) #1.993415
mae(Neonatal_Tetanus_ARIMA$x,Neonatal_Tetanus_ARIMA$fitted) #1.371466

Neonatal_Tetanus_Holt_Winters <- HoltWinters(Neonatal_Tetanus_Train_Set)
checkresiduals(Neonatal_Tetanus_Holt_Winters)
Box.test(residuals(Neonatal_Tetanus_Holt_Winters),type = "Lj")
#Box-Ljung test
#data:  residuals(Neonatal_Tetanus_Holt_Winters)
#X-squared = 1.1315, df = 1, p-value = 0.2875

rmse(Neonatal_Tetanus_Holt_Winters$x,Neonatal_Tetanus_Holt_Winters$fitted) #2.400691
mae(Neonatal_Tetanus_Holt_Winters$x,Neonatal_Tetanus_Holt_Winters$fitted) #1.500588

Neonatal_Tetanus_NNAR <- nnetar(Neonatal_Tetanus_Train_Set)
checkresiduals(Neonatal_Tetanus_NNAR)
Box.test(residuals(Neonatal_Tetanus_NNAR),type = "Lj")
#Box-Ljung test
#data:  residuals(Neonatal_Tetanus_NNAR)
#X-squared = 0.0038817, df = 1, p-value = 0.9503

rmse(Neonatal_Tetanus_NNAR$x[which(!is.na(Neonatal_Tetanus_NNAR$fitted))],
     Neonatal_Tetanus_NNAR$fitted[which(!is.na(Neonatal_Tetanus_NNAR$fitted))]) #1.656437
mae(Neonatal_Tetanus_NNAR$x[which(!is.na(Neonatal_Tetanus_NNAR$fitted))],
    Neonatal_Tetanus_NNAR$fitted[which(!is.na(Neonatal_Tetanus_NNAR$fitted))]) #1.162146

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Neonatal Tetanus is NNAR(1,1,2)[52]

#Non-Neonatal Tetanus
Non_Neonatal_Tetanus_Train_Set <- window(Non_Neonatal_Tetanus, end = c(2019,52))
Non_Neonatal_Tetanus_COVID_Set <- window(Non_Neonatal_Tetanus, start = c(2020,1), end = c(2021,52))

Non_Neonatal_Tetanus_ARIMA <- auto.arima(Non_Neonatal_Tetanus_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Non_Neonatal_Tetanus_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(1,0,4)(1,0,1)[52] with non-zero mean
#Q* = 21.42, df = 24, p-value = 0.6139
#Model df: 7.   Total lags used: 31

rmse(Non_Neonatal_Tetanus_ARIMA$x,Non_Neonatal_Tetanus_ARIMA$fitted) #8.824068
mae(Non_Neonatal_Tetanus_ARIMA$x,Non_Neonatal_Tetanus_ARIMA$fitted) #6.537559

Non_Neonatal_Tetanus_Holt_Winters <- HoltWinters(Non_Neonatal_Tetanus_Train_Set)
checkresiduals(residuals(Non_Neonatal_Tetanus_Holt_Winters))
Box.test(residuals(Non_Neonatal_Tetanus_Holt_Winters),type = "Lj")
#Box-Ljung test
#data:  residuals(Non_Neonatal_Tetanus_Holt_Winters)
#X-squared = 0.70741, df = 1, p-value = 0.4003

rmse(Non_Neonatal_Tetanus_Holt_Winters$x,Non_Neonatal_Tetanus_Holt_Winters$fitted) #12.77215
mae(Non_Neonatal_Tetanus_Holt_Winters$x,Non_Neonatal_Tetanus_Holt_Winters$fitted) #9.474659

Non_Neonatal_Tetanus_NNAR <- nnetar(Non_Neonatal_Tetanus_Train_Set)
checkresiduals(residuals(Non_Neonatal_Tetanus_NNAR))
Box.test(residuals(Non_Neonatal_Tetanus_NNAR),type = "Lj")
#Box-Ljung test
#data:  residuals(Non_Neonatal_Tetanus_NNAR)
#X-squared = 0.44686, df = 1, p-value = 0.5038

rmse(Non_Neonatal_Tetanus_NNAR$x[which(!is.na(Non_Neonatal_Tetanus_NNAR$fitted))],
     Non_Neonatal_Tetanus_NNAR$fitted[which(!is.na(Non_Neonatal_Tetanus_NNAR$fitted))]) #3.533486
mae(Non_Neonatal_Tetanus_NNAR$x[which(!is.na(Non_Neonatal_Tetanus_NNAR$fitted))],
    Non_Neonatal_Tetanus_NNAR$fitted[which(!is.na(Non_Neonatal_Tetanus_NNAR$fitted))]) #2.485376

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Non-Neonatal Tetanus is NNAR(6,1,4)[52]

#Pertussis
Pertussis_Train_Set <- window(Pertussis, end = c(2019,52))
Pertussis_COVID_Set <- window(Pertussis, start = c(2020,1), end = c(2021,52))

Pertussis_ARIMA <- auto.arima(Pertussis_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Pertussis_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(0,0,0) with non-zero mean
#Q* = 12.334, df = 31, p-value = 0.9989
#Model df: 0.   Total lags used: 31

rmse(Pertussis_ARIMA$x,Pertussis_ARIMA$fitted) #16.59615
mae(Pertussis_ARIMA$x,Pertussis_ARIMA$fitted) #4.990467

Pertussis_Holt_Winters <- HoltWinters(Pertussis_Train_Set)
checkresiduals(residuals(Pertussis_Holt_Winters))
Box.test(residuals(Pertussis_Holt_Winters),type = "Lj")
#Box-Ljung test
#data:  residuals(Pertussis_Holt_Winters)
#X-squared = 0.42444, df = 1, p-value = 0.5147

rmse(Pertussis_Holt_Winters$x,Pertussis_Holt_Winters$fitted) #20.7243
mae(Pertussis_Holt_Winters$x,Pertussis_Holt_Winters$fitted) #7.336927

Pertussis_NNAR <- nnetar(Pertussis_Train_Set)
checkresiduals(residuals(Pertussis_NNAR))
Box.test(residuals(Pertussis_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(Pertussis_NNAR)
#X-squared = 0.36116, df = 1, p-value = 0.5479

rmse(Pertussis_NNAR$x[which(!is.na(Pertussis_NNAR$fitted))],
     Pertussis_NNAR$fitted[which(!is.na(Pertussis_NNAR$fitted))]) #12.73194
mae(Pertussis_NNAR$x[which(!is.na(Pertussis_NNAR$fitted))],
    Pertussis_NNAR$fitted[which(!is.na(Pertussis_NNAR$fitted))]) #4.97186

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Pertussis is NNAR(2,1,2)[52]

#Chikungunya
Chikungunya_Train_Set <- window(Chikungunya, end = c(2019,52))
Chikungunya_COVID_Set <- window(Chikungunya, start = c(2020,1), end = c(2021,52))

Chikungunya_ARIMA <- auto.arima(Chikungunya_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Chikungunya_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(2,0,3)(1,0,1)[52] with non-zero mean
#Q* = 20.074, df = 24, p-value = 0.6926
#Model df: 7.   Total lags used: 31

rmse(Chikungunya_ARIMA$x,Chikungunya_ARIMA$fitted) #55.59569
mae(Chikungunya_ARIMA$x,Chikungunya_ARIMA$fitted) #37.39094

Chikungunya_Holt_Winters <- HoltWinters(Chikungunya_Train_Set)
checkresiduals(residuals(Chikungunya_Holt_Winters))
Box.test(residuals(Chikungunya_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(Chikungunya_Holt_Winters)
#X-squared = 11.851, df = 1, p-value = 0.0005762

rmse(Chikungunya_Holt_Winters$x,Chikungunya_Holt_Winters$fitted) #71.16204
mae(Chikungunya_Holt_Winters$x,Chikungunya_Holt_Winters$fitted) #47.30471

Chikungunya_NNAR <- nnetar(Chikungunya_Train_Set)
checkresiduals(residuals(Chikungunya_NNAR))
Box.test(residuals(Chikungunya_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(Chikungunya_NNAR)
#X-squared = 0.022394, df = 1, p-value = 0.881

rmse(Chikungunya_NNAR$x[which(!is.na(Chikungunya_NNAR$fitted))],
     Chikungunya_NNAR$fitted[which(!is.na(Chikungunya_NNAR$fitted))]) #5.711334
mae(Chikungunya_NNAR$x[which(!is.na(Chikungunya_NNAR$fitted))],
    Chikungunya_NNAR$fitted[which(!is.na(Chikungunya_NNAR$fitted))]) #3.806281

#Only the ARIMA and NNAR have satisfactory residuals and based on the Ljung-Box test, these models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Chikungunya is NNAR(9,1,6)[52]

#Dengue
Dengue_Train_Set <- window(Dengue, end = c(2019,52))
Dengue_COVID_Set <- window(Dengue, start = c(2020,1), end = c(2021,52))

Dengue_ARIMA <- auto.arima(Dengue_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Dengue_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(0,1,5)(1,0,0)[52]
#Q* = 23.404, df = 25, p-value = 0.554
#Model df: 6.   Total lags used: 31

rmse(Dengue_ARIMA$x,Dengue_ARIMA$fitted) #2160.395
mae(Dengue_ARIMA$x,Dengue_ARIMA$fitted) #1499.887

Dengue_Holt_Winters <- HoltWinters(Dengue_Train_Set)
checkresiduals(residuals(Dengue_Holt_Winters))
Box.test(residuals(Dengue_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(Dengue_Holt_Winters)
#X-squared = 5.5667, df = 1, p-value = 0.01831

rmse(Dengue_Holt_Winters$x,Dengue_Holt_Winters$fitted) #5960.985
mae(Dengue_Holt_Winters$x,Dengue_Holt_Winters$fitted) #4101.127

Dengue_NNAR <- nnetar(Dengue_Train_Set)
checkresiduals(residuals(Dengue_NNAR))
Box.test(residuals(Dengue_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(Dengue_NNAR)
#X-squared = 0.015262, df = 1, p-value = 0.9017

rmse(Dengue_NNAR$x[which(!is.na(Dengue_NNAR$fitted))],
     Dengue_NNAR$fitted[which(!is.na(Dengue_NNAR$fitted))]) #347.0897
mae(Dengue_NNAR$x[which(!is.na(Dengue_NNAR$fitted))],
    Dengue_NNAR$fitted[which(!is.na(Dengue_NNAR$fitted))]) #234.8304

#Only the ARIMA and NNAR have satisfactory residuals and based on the Ljung-Box test, these models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Dengue is NNAR(9,1,6)[52]

#Leptospirosis
Leptospirosis_Train_Set <- window(Leptospirosis, end = c(2019,52))
Leptospirosis_COVID_Set <- window(Leptospirosis, start = c(2020,1), end = c(2021,52))

Leptospirosis_ARIMA <- auto.arima(Leptospirosis_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Leptospirosis_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(1,0,2) with non-zero mean
#Q* = 34.975, df = 28, p-value = 0.1706
#Model df: 3.   Total lags used: 31

rmse(Leptospirosis_ARIMA$x,Leptospirosis_ARIMA$fitted) #101.9212
mae(Leptospirosis_ARIMA$x,Leptospirosis_ARIMA$fitted) #56.32518

Leptospirosis_Holt_Winters <- HoltWinters(Leptospirosis_Train_Set)
checkresiduals(residuals(Leptospirosis_Holt_Winters))
Box.test(residuals(Leptospirosis_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(Leptospirosis_Holt_Winters)
#X-squared = 0.61143, df = 1, p-value = 0.4343

rmse(Leptospirosis_Holt_Winters$x,Leptospirosis_Holt_Winters$fitted) #143.414
mae(Leptospirosis_Holt_Winters$x,Leptospirosis_Holt_Winters$fitted) #94.34564

Leptospirosis_NNAR <- nnetar(Leptospirosis_Train_Set)
checkresiduals(residuals(Leptospirosis_NNAR))
Box.test(residuals(Leptospirosis_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(Leptospirosis_NNAR)
#X-squared = 0.11645, df = 1, p-value = 0.7329

rmse(Leptospirosis_NNAR$x[which(!is.na(Leptospirosis_NNAR$fitted))],
     Leptospirosis_NNAR$fitted[which(!is.na(Leptospirosis_NNAR$fitted))]) #21.44733
mae(Leptospirosis_NNAR$x[which(!is.na(Leptospirosis_NNAR$fitted))],
    Leptospirosis_NNAR$fitted[which(!is.na(Leptospirosis_NNAR$fitted))]) #15.46622

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Leptospirosis is NNAR(8,1,5)[52]

#Rabies
Rabies_Train_Set <- window(Rabies, end = c(2019,52))
Rabies_COVID_Set <- window(Rabies, start = c(2020,1), end = c(2021,52))

Rabies_ARIMA <- auto.arima(Rabies_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Rabies_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(3,0,0)(1,0,0)[52] with non-zero mean
#Q* = 22.143, df = 27, p-value = 0.7301
#Model df: 4.   Total lags used: 31

rmse(Rabies_ARIMA$x,Rabies_ARIMA$fitted) #3.2193
mae(Rabies_ARIMA$x,Rabies_ARIMA$fitted) #2.597459

Rabies_Holt_Winters <- HoltWinters(Rabies_Train_Set)
checkresiduals(residuals(Rabies_Holt_Winters))
Box.test(residuals(Rabies_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(Rabies_Holt_Winters)
#X-squared = 0.064781, df = 1, p-value = 0.7991

rmse(Rabies_Holt_Winters$x,Rabies_Holt_Winters$fitted) #5.064998
mae(Rabies_Holt_Winters$x,Rabies_Holt_Winters$fitted) #4.039556

Rabies_NNAR <- nnetar(Rabies_Train_Set)
checkresiduals(residuals(Rabies_NNAR))
Box.test(residuals(Rabies_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(Rabies_NNAR)
#X-squared = 0.24602, df = 1, p-value = 0.6199

rmse(Rabies_NNAR$x[which(!is.na(Rabies_NNAR$fitted))],
     Rabies_NNAR$fitted[which(!is.na(Rabies_NNAR$fitted))]) #2.772045
mae(Rabies_NNAR$x[which(!is.na(Rabies_NNAR$fitted))],
    Rabies_NNAR$fitted[which(!is.na(Rabies_NNAR$fitted))]) #2.201812

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Rabies is NNAR(1,1,2)[52]

#Acute Bloody Diarrhea
ABD_Train_Set <- window(ABD, end = c(2019,52))
ABD_COVID_Set <- window(ABD, start = c(2020,1), end = c(2021,52))

ABD_ARIMA <- auto.arima(ABD_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(ABD_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(1,0,2)(1,0,0)[52] with non-zero mean
#Q* = 51.487, df = 27, p-value = 0.003051
#Model df: 4.   Total lags used: 31

rmse(ABD_ARIMA$x,ABD_ARIMA$fitted) #252.5374
mae(ABD_ARIMA$x,ABD_ARIMA$fitted) #160.5858

ABD_Holt_Winters <- HoltWinters(ABD_Train_Set)
checkresiduals(residuals(ABD_Holt_Winters))
Box.test(residuals(ABD_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(ABD_Holt_Winters)
#X-squared = 13.899, df = 1, p-value = 0.0001929

rmse(ABD_Holt_Winters$x,ABD_Holt_Winters$fitted) #345.5129
mae(ABD_Holt_Winters$x,ABD_Holt_Winters$fitted) #259.4485

ABD_NNAR <- nnetar(ABD_Train_Set)
checkresiduals(residuals(ABD_NNAR))
Box.test(residuals(ABD_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(ABD_NNAR)
#X-squared = 0.81073, df = 1, p-value = 0.3679

rmse(ABD_NNAR$x[which(!is.na(ABD_NNAR$fitted))],
     ABD_NNAR$fitted[which(!is.na(ABD_NNAR$fitted))]) #18.90446
mae(ABD_NNAR$x[which(!is.na(ABD_NNAR$fitted))],
    ABD_NNAR$fitted[which(!is.na(ABD_NNAR$fitted))]) #14.79616

#Only the NNAR model has the  satisfies the Ljung-Box test which indicates that the model was a good fit.
#Based on the Error Metrics, the appropriate model for Acute Bloody Diarrhea is NNAR(9,1,6)[52]

#Hepatitis A
Hepatitis_A_Train_Set <- window(Hepatitis_A, end = c(2019,52))
Hepatitis_A_COVID_Set <- window(Hepatitis_A, start = c(2020,1), end = c(2021,52))

Hepatitis_A_ARIMA <- auto.arima(Hepatitis_A_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Hepatitis_A_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(1,0,2) with non-zero mean
#Q* = 10.159, df = 28, p-value = 0.9992
#Model df: 3.   Total lags used: 31

rmse(Hepatitis_A_ARIMA$x,Hepatitis_A_ARIMA$fitted) #73.29491
mae(Hepatitis_A_ARIMA$x,Hepatitis_A_ARIMA$fitted) #28.36628

Hepatitis_A_Holt_Winters <- HoltWinters(Hepatitis_A_Train_Set)
checkresiduals(residuals(Hepatitis_A_Holt_Winters))
Box.test(residuals(Hepatitis_A_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(Hepatitis_A_Holt_Winters)
#X-squared = 1.6479, df = 1, p-value = 0.1992

rmse(Hepatitis_A_Holt_Winters$x,Hepatitis_A_Holt_Winters$fitted) #95.92604
mae(Hepatitis_A_Holt_Winters$x,Hepatitis_A_Holt_Winters$fitted) #34.90676

Hepatitis_A_NNAR <- nnetar(Hepatitis_A_Train_Set)
checkresiduals(residuals(Hepatitis_A_NNAR))
Box.test(residuals(Hepatitis_A_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(Hepatitis_A_NNAR)
#X-squared = 0.45216, df = 1, p-value = 0.5013

rmse(Hepatitis_A_NNAR$x[which(!is.na(Hepatitis_A_NNAR$fitted))],
     Hepatitis_A_NNAR$fitted[which(!is.na(Hepatitis_A_NNAR$fitted))]) #59.60451
mae(Hepatitis_A_NNAR$x[which(!is.na(Hepatitis_A_NNAR$fitted))],
    Hepatitis_A_NNAR$fitted[which(!is.na(Hepatitis_A_NNAR$fitted))]) #22.70642

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Hepatitis A is NNAR(4,1,3)[52]

#Cholera
Cholera_Train_Set <- window(Cholera, end = c(2019,52))
Cholera_COVID_Set <- window(Cholera, start = c(2020,1), end = c(2021,52))

Cholera_ARIMA <- auto.arima(Cholera_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Cholera_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(1,0,1)(0,0,1)[52] with zero mean
#Q* = 45.131, df = 28, p-value = 0.0214
#Model df: 3.   Total lags used: 31

rmse(Cholera_ARIMA$x,Cholera_ARIMA$fitted) #71.63417
mae(Cholera_ARIMA$x,Cholera_ARIMA$fitted) #29.72883

Cholera_Holt_Winters <- HoltWinters(Cholera_Train_Set)
checkresiduals(residuals(Cholera_Holt_Winters))
Box.test(residuals(Cholera_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(Cholera_Holt_Winters)
#X-squared = 0.007758, df = 1, p-value = 0.9298

rmse(Cholera_Holt_Winters$x,Cholera_Holt_Winters$fitted) #104.6398
mae(Cholera_Holt_Winters$x,Cholera_Holt_Winters$fitted) #57.18299

Cholera_NNAR <- nnetar(Cholera_Train_Set)
checkresiduals(residuals(Cholera_NNAR))
Box.test(residuals(Cholera_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(Cholera_NNAR)
#X-squared = 0.00093003, df = 1, p-value = 0.9757

rmse(Cholera_NNAR$x[which(!is.na(Cholera_NNAR$fitted))],
     Cholera_NNAR$fitted[which(!is.na(Cholera_NNAR$fitted))]) #26.11943
mae(Cholera_NNAR$x[which(!is.na(Cholera_NNAR$fitted))],
    Cholera_NNAR$fitted[which(!is.na(Cholera_NNAR$fitted))]) #19.7733

#Only the Holt-Winters and NNAR models has the  satisfies the Ljung-Box test which indicates that the models were good fit.
#Based on the Error Metrics, the appropriate model for Cholera is NNAR(6,1,4)[52]

#Rotavirus
Rotavirus_Train_Set <- window(Rotavirus, end = c(2019,52))
Rotavirus_COVID_Set <- window(Rotavirus, start = c(2020,1), end = c(2021,52))

Rotavirus_ARIMA <- auto.arima(Rotavirus_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Rotavirus_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(1,0,1) with non-zero mean
#Q* = 28.349, df = 29, p-value = 0.4993
#Model df: 2.   Total lags used: 31

rmse(Rotavirus_ARIMA$x,Rotavirus_ARIMA$fitted) #61.15989
mae(Rotavirus_ARIMA$x,Rotavirus_ARIMA$fitted) #41.65125

Rotavirus_Holt_Winters <- HoltWinters(Rotavirus_Train_Set)
checkresiduals(residuals(Rotavirus_Holt_Winters))
Box.test(residuals(Rotavirus_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(Rotavirus_Holt_Winters)
#X-squared = 0.38638, df = 1, p-value = 0.5342

rmse(Rotavirus_Holt_Winters$x,Rotavirus_Holt_Winters$fitted) #81.28087
mae(Rotavirus_Holt_Winters$x,Rotavirus_Holt_Winters$fitted) #57.29169

Rotavirus_NNAR <- nnetar(Rotavirus_Train_Set)
checkresiduals(residuals(Rotavirus_NNAR))
Box.test(residuals(Rotavirus_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(Rotavirus_NNAR)
#X-squared = 0.31556, df = 1, p-value = 0.5743

rmse(Rotavirus_NNAR$x[which(!is.na(Rotavirus_NNAR$fitted))],
     Rotavirus_NNAR$fitted[which(!is.na(Rotavirus_NNAR$fitted))]) #16.35012
mae(Rotavirus_NNAR$x[which(!is.na(Rotavirus_NNAR$fitted))],
    Rotavirus_NNAR$fitted[which(!is.na(Rotavirus_NNAR$fitted))]) #11.18711

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Rotavirus is NNAR(8,1,5)[52]

#Typhoid Fever
Typhoid_Fever_Train_Set <- window(Typhoid_Fever, end = c(2019,52))
Typhoid_Fever_COVID_Set <- window(Typhoid_Fever, start = c(2020,1), end = c(2021,52))

Typhoid_Fever_ARIMA <- auto.arima(Typhoid_Fever_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Typhoid_Fever_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(2,0,1)(1,0,1)[52] with non-zero mean
#Q* = 41.098, df = 26, p-value = 0.03033
#Model df: 5.   Total lags used: 31

rmse(Typhoid_Fever_ARIMA$x,Typhoid_Fever_ARIMA$fitted) #274.9603
mae(Typhoid_Fever_ARIMA$x,Typhoid_Fever_ARIMA$fitted) #193.54725

Typhoid_Fever_Holt_Winters <- HoltWinters(Typhoid_Fever_Train_Set)
checkresiduals(residuals(Typhoid_Fever_Holt_Winters))
Box.test(residuals(Typhoid_Fever_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(Typhoid_Fever_Holt_Winters)
#X-squared = 4.8769, df = 1, p-value = 0.02722

rmse(Typhoid_Fever_Holt_Winters$x,Typhoid_Fever_Holt_Winters$fitted) #435.3518
mae(Typhoid_Fever_Holt_Winters$x,Typhoid_Fever_Holt_Winters$fitted) #341.4627

Typhoid_Fever_NNAR <- nnetar(Typhoid_Fever_Train_Set)
checkresiduals(residuals(Typhoid_Fever_NNAR))
Box.test(residuals(Typhoid_Fever_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(Typhoid_Fever_NNAR)
#X-squared = 0.0052716, df = 1, p-value = 0.9421

rmse(Typhoid_Fever_NNAR$x[which(!is.na(Typhoid_Fever_NNAR$fitted))],
     Typhoid_Fever_NNAR$fitted[which(!is.na(Typhoid_Fever_NNAR$fitted))]) #174.9829
mae(Typhoid_Fever_NNAR$x[which(!is.na(Typhoid_Fever_NNAR$fitted))],
    Typhoid_Fever_NNAR$fitted[which(!is.na(Typhoid_Fever_NNAR$fitted))]) #132.6197

#Only the NNAR model has the  satisfies the Ljung-Box test which indicates that the model was a good fit.
#Based on the Error Metrics, the appropriate model for Typhoid Fever is NNAR(2,1,2)[52]

#Influenza-Like Illness (ILI)
ILI_Train_Set <- window(ILI, end = c(2019,52))
ILI_COVID_Set <- window(ILI, start = c(2020,1), end = c(2021,52))

ILI_ARIMA <- auto.arima(ILI_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(ILI_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(0,0,0)(1,0,0)[52] with non-zero mean
#Q* = 42.642, df = 30, p-value = 0.06299
#Model df: 1.   Total lags used: 31

rmse(ILI_ARIMA$x,ILI_ARIMA$fitted) #2264.59
mae(ILI_ARIMA$x,ILI_ARIMA$fitted) #1339.005

ILI_Holt_Winters <- HoltWinters(ILI_Train_Set)
checkresiduals(residuals(ILI_Holt_Winters))
Box.test(residuals(ILI_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(ILI_Holt_Winters)
#X-squared = 2.2025, df = 1, p-value = 0.1378

rmse(ILI_Holt_Winters$x,ILI_Holt_Winters$fitted) #2839.754
mae(ILI_Holt_Winters$x,ILI_Holt_Winters$fitted) #2090.35

ILI_NNAR <- nnetar(ILI_Train_Set)
checkresiduals(residuals(ILI_NNAR))
Box.test(residuals(ILI_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(ILI_NNAR)
#X-squared = 0.063793, df = 1, p-value = 0.8006

rmse(ILI_NNAR$x[which(!is.na(ILI_NNAR$fitted))],
     ILI_NNAR$fitted[which(!is.na(ILI_NNAR$fitted))]) #2.746171
mae(ILI_NNAR$x[which(!is.na(ILI_NNAR$fitted))],
    ILI_NNAR$fitted[which(!is.na(ILI_NNAR$fitted))]) #1.224542

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Influenza-Like Illness (ILI) is NNAR(16,1,9)[52]

#Meningoccocal Disease
Meningoccocal_Disease_Train_Set <- window(Meningoccocal_Disease, end = c(2019,52))
Meningoccocal_Disease_COVID_Set <- window(Meningoccocal_Disease, start = c(2020,1), end = c(2021,52))

Meningoccocal_Disease_ARIMA <- auto.arima(Meningoccocal_Disease_Train_Set, ic = "aic", test = "adf", trace = TRUE, seasonal = TRUE)
checkresiduals(Meningoccocal_Disease_ARIMA)
#Ljung-Box test
#data:  Residuals from ARIMA(2,0,0) with non-zero mean
#Q* = 26.612, df = 29, p-value = 0.5926
#Model df: 2.   Total lags used: 31

rmse(Meningoccocal_Disease_ARIMA$x,Meningoccocal_Disease_ARIMA$fitted) #3.888105
mae(Meningoccocal_Disease_ARIMA$x,Meningoccocal_Disease_ARIMA$fitted) #2.850608

Meningoccocal_Disease_Holt_Winters <- HoltWinters(Meningoccocal_Disease_Train_Set)
checkresiduals(residuals(Meningoccocal_Disease_Holt_Winters))
Box.test(residuals(Meningoccocal_Disease_Holt_Winters),type = 'Lj')
#Box-Ljung test
#data:  residuals(Meningoccocal_Disease_Holt_Winters)
#X-squared = 0.3793, df = 1, p-value = 0.538

rmse(Meningoccocal_Disease_Holt_Winters$x,Meningoccocal_Disease_Holt_Winters$fitted) #5.539412
mae(Meningoccocal_Disease_Holt_Winters$x,Meningoccocal_Disease_Holt_Winters$fitted) #3.941941

Meningoccocal_Disease_NNAR <- nnetar(Meningoccocal_Disease_Train_Set)
checkresiduals(residuals(Meningoccocal_Disease_NNAR))
Box.test(residuals(Meningoccocal_Disease_NNAR),type = 'Lj')
#Box-Ljung test
#data:  residuals(Meningoccocal_Disease_NNAR)
#X-squared = 0.11667, df = 1, p-value = 0.7327

rmse(Meningoccocal_Disease_NNAR$x[which(!is.na(Meningoccocal_Disease_NNAR$fitted))],
     Meningoccocal_Disease_NNAR$fitted[which(!is.na(Meningoccocal_Disease_NNAR$fitted))]) #3.168913
mae(Meningoccocal_Disease_NNAR$x[which(!is.na(Meningoccocal_Disease_NNAR$fitted))],
    Meningoccocal_Disease_NNAR$fitted[which(!is.na(Meningoccocal_Disease_NNAR$fitted))]) #2.373818

#All models have satisfactory residuals and based on the Ljung-Box test, the models were good fit for the data.
#Based on the Error Metrics, the appropriate model for Meningoccocal Disease is NNAR(2,1,2)[52]

###########################################
##     Comparative Forecast Analysis     ##
###########################################

#####################################
##   Building necessary functions  ##
#####################################

#A function for checking the adherence of the time series to the assumptions of the t-test 

check_t_test_assumptions <- function(ts1, ts2) {
  # Check for Normality
  normality_test_ts1 <- shapiro.test(ts1)
  normality_test_ts2 <- shapiro.test(ts2)
  
  # Check for Homogeneity of Variances
  variance_test <- var.test(ts1, ts2)
  
  # Check if the assumptions are met
  normality <- normality_test_ts1$p.value > 0.05 && normality_test_ts2$p.value > 0.05
  homogeneity <- variance_test$p.value > 0.05
  
  # Print results
  cat("Normality (Both Series):", ifelse(normality, "YES", "NO"), "\n")
  cat("Homogeneity of Variances:", ifelse(homogeneity, "YES", "NO"), "\n")
}

#A function  that takes two time series datasets as input, performs the Mann-Whitney U test (Wilcoxon test), and then prints a message based on the p-value.
wilcox_test <- function(ts1, ts2) {
  # Perform the Mann-Whitney U Test
  test_result <- wilcox.test(ts1, ts2)
  
  # Check the p-value and print the result
  if (test_result$p.value < 0.05) {
    cat(test_result$p.value,",There is statistically significant difference\n")
  } else {
    cat(test_result$p.value,",There is no statistically significant difference\n")
  }
}

#A function that calculates both the percentage difference based on means and the percentage difference based on medians.
calculate_percentage_differences <- function(dataset1, dataset2) {
  # Calculate means
  mean_ds1 <- mean(dataset1, na.rm = TRUE)
  mean_ds2 <- mean(dataset2, na.rm = TRUE)
  mean_percentage_difference <- ((mean_ds2 - mean_ds1) / mean_ds1) * 100
  
  # Calculate medians
  median_ds1 <- median(dataset1, na.rm = TRUE)
  median_ds2 <- median(dataset2, na.rm = TRUE)
  median_percentage_difference <- ((median_ds2 - median_ds1) / median_ds1) * 100
  
  # Print results
  cat("Percentage difference based on means:", mean_percentage_difference, "%\n")
  cat("Percentage difference based on medians:", median_percentage_difference, "%\n")
}

########################
## Hypothesis Testing ##
########################

#Acute Flaccid Paralysis (AFP)
Forecast_AFP <- forecast(AFP_NNAR, PI = TRUE, h=104)
Forecast_AFP$mean <- pmax(Forecast_AFP$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_AFP$mean),as.numeric(AFP_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(AFP_COVID_Set,Forecast_AFP$mean)
#0.6361621 ,There is no statistically significant difference

#Visualization
ts.plot(AFP_COVID_Set,Forecast_AFP$mean, col = c("blue","red"), main = "Acute Flaccid Paralysis")
legend("top",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_AFP$mean,AFP_COVID_Set)
#Percentage difference based on means: -4.000186 %
#Percentage difference based on medians: -12.59662 %
#The Percentage difference based on the medians indicate that there is no underreporting or fewer cases than expected in most instances.


#Diphtheria
Forecast_Diphtheria <- forecast(Diphtheria_NNAR, PI = TRUE, h=104)
Forecast_Diphtheria$mean <- pmax(Forecast_Diphtheria$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Diphtheria$mean),as.numeric(Diphtheria_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Diphtheria_COVID_Set,Forecast_Diphtheria$mean)
#9.302277e-34 ,There is statistically significant difference

#Visualization
ts.plot(Diphtheria_COVID_Set,Forecast_Diphtheria$mean, col = c("blue","red"), main = "Diphtheria")
legend("topleft",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Diphtheria$mean,Diphtheria_COVID_Set)
#Percentage difference based on means: -81.99793 %
#Percentage difference based on medians: -85.71224 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Measles
Forecast_Measles <- forecast(Measles_NNAR, PI = TRUE, h=104)
Forecast_Measles$mean <- pmax(Forecast_Measles$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Measles$mean),as.numeric(Measles_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Measles_COVID_Set,Forecast_Measles$mean)
#1.011046e-35 ,There is statistically significant difference

#Visualization
ts.plot(Measles_COVID_Set,Forecast_Measles$mean, col = c("blue","red"), main = "Measles")
legend("topleft",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Measles$mean,Measles_COVID_Set)
#Percentage difference based on means: -98.54399 %
#Percentage difference based on medians: -99.82891 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Rubella
Forecast_Rubella <- forecast(Rubella_NNAR, PI = TRUE, h=104)
Forecast_Rubella$mean <- pmax(Forecast_Rubella$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Rubella$mean),as.numeric(Rubella_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Rubella_COVID_Set,Forecast_Rubella$mean)
#8.148295e-09 ,There is statistically significant difference

#Visualization
ts.plot(Rubella_COVID_Set,Forecast_Rubella$mean, col = c("blue","red"), main = "Rubella")
legend("topleft",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Rubella$mean,Rubella_COVID_Set)
#Percentage difference based on means: 14.81004 %
#Percentage difference based on medians: -84.63089 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Neonatal Tetanus
Forecast_Neonatal_Tetanus <- forecast(Neonatal_Tetanus_NNAR, PI = TRUE, h=104)
Forecast_Neonatal_Tetanus$mean <- pmax(Forecast_Neonatal_Tetanus$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Neonatal_Tetanus$mean),as.numeric(Neonatal_Tetanus_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Neonatal_Tetanus_COVID_Set,Forecast_Neonatal_Tetanus$mean)
#3.36928e-20 ,There is statistically significant difference

#Visualization
ts.plot(Neonatal_Tetanus_COVID_Set,Forecast_Neonatal_Tetanus$mean, col = c("blue","red"), main = "Neonatal Tetanus")
legend("topleft",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Neonatal_Tetanus$mean,Neonatal_Tetanus_COVID_Set)
#Percentage difference based on means: -38.55432 %
#Percentage difference based on medians: -100 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Non-Neonatal Tetanus
Forecast_Non_Neonatal_Tetanus <- forecast(Non_Neonatal_Tetanus_NNAR, PI = TRUE, h=104)
Forecast_Non_Neonatal_Tetanus$mean <- pmax(Forecast_Non_Neonatal_Tetanus$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Non_Neonatal_Tetanus$mean),as.numeric(Non_Neonatal_Tetanus_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Non_Neonatal_Tetanus_COVID_Set,Forecast_Non_Neonatal_Tetanus$mean)
#1.390103e-24 ,There is statistically significant difference

#Visualization
ts.plot(Non_Neonatal_Tetanus_COVID_Set,Forecast_Non_Neonatal_Tetanus$mean, col = c("blue","red"), main = "Non-Neonatal Tetanus")
legend("topleft",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Non_Neonatal_Tetanus$mean,Non_Neonatal_Tetanus_COVID_Set)
#Percentage difference based on means: 350.0409 %
#Percentage difference based on medians: 943.3075 %
#The Percentage difference based on the medians indicate overreported or unexpectedly high number of cases..


#Pertussis
Forecast_Pertussis <- forecast(Pertussis_NNAR, PI = TRUE, h=104)
Forecast_Pertussis$mean <- pmax(Forecast_Pertussis$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Pertussis$mean),as.numeric(Pertussis_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Pertussis_COVID_Set,Forecast_Pertussis$mean)
#1.242903e-33 ,There is statistically significant difference

#Visualization
ts.plot(Pertussis_COVID_Set,Forecast_Pertussis$mean, col = c("blue","red"), main = "Pertussis")
legend("topright",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Pertussis$mean,Pertussis_COVID_Set)
#Percentage difference based on means: -80.67263 %
#Percentage difference based on medians: -100 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Chikungunya
Forecast_Chikungunya <- forecast(Chikungunya_NNAR, PI = TRUE, h=104)
Forecast_Chikungunya$mean <- pmax(Forecast_Chikungunya$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Chikungunya$mean),as.numeric(Chikungunya_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Chikungunya_COVID_Set,Forecast_Chikungunya$mean)
#5.014168e-30 ,There is statistically significant difference

#Visualization
ts.plot(Chikungunya_COVID_Set,Forecast_Chikungunya$mean, col = c("blue","red"), main = "Chikungunya")
legend("topright",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Chikungunya$mean,Chikungunya_COVID_Set)
#Percentage difference based on means: -88.10838 %
#Percentage difference based on medians: -100 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Dengue
Forecast_Dengue <- forecast(Dengue_NNAR, PI = TRUE, h=104)
Forecast_Dengue$mean <- pmax(Forecast_Dengue$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Dengue$mean),as.numeric(Dengue_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Dengue_COVID_Set,Forecast_Dengue$mean)
#1.667687e-15 ,There is statistically significant difference

#Visualization
ts.plot(Dengue_COVID_Set,Forecast_Dengue$mean, col = c("blue","red"), main = "Dengue")
legend("top",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Dengue$mean,Dengue_COVID_Set)
#Percentage difference based on means: -64.28016 %
#Percentage difference based on medians: -73.40684 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Leptospirosis
Forecast_Leptospirosis <- forecast(Leptospirosis_NNAR, PI = TRUE, h=104)
Forecast_Leptospirosis$mean <- pmax(Forecast_Leptospirosis$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Leptospirosis$mean),as.numeric(Leptospirosis_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Leptospirosis_COVID_Set,Forecast_Leptospirosis$mean)
#4.375783e-08 ,There is statistically significant difference

#Visualization
ts.plot(Leptospirosis_COVID_Set,Forecast_Leptospirosis$mean, col = c("blue","red"), main = "Leptospirosis")
legend("topleft",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Leptospirosis$mean,Leptospirosis_COVID_Set)
#Percentage difference based on means: -65.95027 %
#Percentage difference based on medians: -78.04908 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Rabies
Forecast_Rabies <- forecast(Rabies_NNAR, PI = TRUE, h=104)
Forecast_Rabies$mean <- pmax(Forecast_Rabies$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Rabies$mean),as.numeric(Rabies_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Rabies_COVID_Set,Forecast_Rabies$mean)
#1.603263e-09 ,There is statistically significant difference

#Visualization
ts.plot(Rabies_COVID_Set,Forecast_Rabies$mean, col = c("blue","red"), main = "Rabies")
legend("topleft",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Rabies$mean,Rabies_COVID_Set)
#Percentage difference based on means: -25.47364 %
#Percentage difference based on medians: -36.54677 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Acute Bloody Diarrhea
Forecast_ABD <- forecast(ABD_NNAR, PI = TRUE, h=104)
Forecast_ABD$mean <- pmax(Forecast_ABD$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_ABD$mean),as.numeric(ABD_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: YES 
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(ABD_COVID_Set,Forecast_ABD$mean)
#3.78302e-28 ,There is statistically significant difference

#Visualization
ts.plot(ABD_COVID_Set,Forecast_ABD$mean, col = c("blue","red"), main = "Acute Bloody Diarrhea")
legend("topright",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_ABD$mean,ABD_COVID_Set)
#Percentage difference based on means: -61.23005 %
#Percentage difference based on medians: -70.99436 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Hepatitis A
Forecast_Hepatitis_A <- forecast(Hepatitis_A_NNAR, PI = TRUE, h=104)
Forecast_Hepatitis_A$mean <- pmax(Forecast_Hepatitis_A$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Hepatitis_A$mean),as.numeric(Hepatitis_A_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Hepatitis_A_COVID_Set,Forecast_Hepatitis_A$mean)
#2.20857e-08 ,There is statistically significant difference

#Visualization
ts.plot(Hepatitis_A_COVID_Set,Forecast_Hepatitis_A$mean, col = c("blue","red"), main = "Hepatitis A")
legend("topleft",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_ABD$mean,Hepatitis_A_COVID_Set)
#Percentage difference based on means: -99.63154 %
#Percentage difference based on medians: -99.70994 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Cholera
Forecast_Cholera <- forecast(Cholera_NNAR, PI = TRUE, h=104)
Forecast_Cholera$mean <- pmax(Forecast_Cholera$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Cholera$mean),as.numeric(Cholera_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Cholera_COVID_Set,Forecast_Cholera$mean)
#1.367254e-26 ,There is statistically significant difference

#Visualization
ts.plot(Cholera_COVID_Set,Forecast_Cholera$mean, col = c("blue","red"), main = "Cholera")
legend("topleft",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Cholera$mean,Cholera_COVID_Set)
#Percentage difference based on means: -73.03064 %
#Percentage difference based on medians: -81.90138 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.

#Rotavirus
Forecast_Rotavirus <- forecast(Rotavirus_NNAR, PI = TRUE, h=104)
Forecast_Rotavirus$mean <- pmax(Forecast_Rotavirus$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Rotavirus$mean),as.numeric(Rotavirus_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: YES
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Rotavirus_COVID_Set,Forecast_Rotavirus$mean)
#1.44481e-28 ,There is statistically significant difference

#Visualization
ts.plot(Rotavirus_COVID_Set,Forecast_Rotavirus$mean, col = c("blue","red"), main = "Rotavirus")
legend("topright",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Rotavirus$mean,Rotavirus_COVID_Set)
#Percentage difference based on means: -75.38208 %
#Percentage difference based on medians: -83.59943 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.

#Typhoid Fever
Forecast_Typhoid_Fever <- forecast(Typhoid_Fever_NNAR, PI = TRUE, h=104)
Forecast_Typhoid_Fever$mean <- pmax(Forecast_Typhoid_Fever$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Typhoid_Fever$mean),as.numeric(Typhoid_Fever_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Typhoid_Fever_COVID_Set,Forecast_Typhoid_Fever$mean)
#2.070231e-32 ,There is statistically significant difference

#Visualization
ts.plot(Typhoid_Fever_COVID_Set,Forecast_Typhoid_Fever$mean, col = c("blue","red"), main = "Typhoid Fever")
legend("topright",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Typhoid_Fever$mean,Typhoid_Fever_COVID_Set)
#Percentage difference based on means: -73.57733 %
#Percentage difference based on medians: -75.7362 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Influenza-Like Illness (ILI)
Forecast_ILI <- forecast(ILI_NNAR, PI = TRUE, h=104)
Forecast_ILI$mean <- pmax(Forecast_ILI$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_ILI$mean),as.numeric(ILI_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(ILI_COVID_Set,Forecast_ILI$mean)
#2.819765e-11 ,There is statistically significant difference

#Visualization
ts.plot(ILI_COVID_Set,Forecast_ILI$mean, col = c("blue","red"), main = "Influenza-Like Illness")
legend("topright",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_ILI$mean,ILI_COVID_Set)
#Percentage difference based on means: -25.87932 %
#Percentage difference based on medians: -37.96931 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.


#Meningoccocal Disease
Forecast_Meningoccocal_Disease <- forecast(Meningoccocal_Disease_NNAR, PI = TRUE, h=104)
Forecast_Meningoccocal_Disease$mean <- pmax(Forecast_Meningoccocal_Disease$mean, 0)

#Checking the assumptions
check_t_test_assumptions(as.numeric(Forecast_Meningoccocal_Disease$mean),as.numeric(Meningoccocal_Disease_COVID_Set))
#Normality (Both Series): NO 
#Homogeneity of Variances: NO
#Since the normality assumption is not met, we will apply the wilcox.test

wilcox_test(Meningoccocal_Disease_COVID_Set,Forecast_Meningoccocal_Disease$mean)
#1.838236e-16 ,There is statistically significant difference

#Visualization
ts.plot(Meningoccocal_Disease_COVID_Set,Forecast_Meningoccocal_Disease$mean, col = c("blue","red"), main = "Meningoccocal Disease")
legend("topright",bty="o",lty=c(1,1),col=c("blue","red"),legend=c("Actual","NNAR"),cex=0.7,inset=0.01,lwd=2)

#Calculating percentage differences
calculate_percentage_differences(Forecast_Meningoccocal_Disease$mean,Meningoccocal_Disease_COVID_Set)
#Percentage difference based on means: 23.24811 %
#Percentage difference based on medians: -55.65983 %
#The Percentage difference based on the medians indicate underreporting or fewer cases than expected in most instances.