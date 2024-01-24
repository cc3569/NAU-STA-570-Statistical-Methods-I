library(mosaic)

##Problem 3: Problem 1 Population Data

#DataFrame
PolutionRatios <- data.frame(Ratio = c(76.50, 6.03, 3.51, 9.96, 4.24, 7.74, 9.54, 41.70, 1.84, 2.5, 1.54, 0.27, 0.61, 0.54, 0.14, 0.63, 0.23, 0.56, 0.48, 0.16, 0.18 ), Type = c( rep('Terrestrial',11), rep('Aquatic',10) ) )
head(PolutionRatios)

#filter by Type
PopTerrestrial <- PolutionRatios %>% filter(Type == "Terrestrial")
PopAquatic <- PolutionRatios %>% filter(Type == "Aquatic")

#Mean and Median by Type
mean(PopTerrestrial$Ratio)
median(PopTerrestrial$Ratio)

mean(PopAquatic$Ratio)
median(PopAquatic$Ratio)

##Problem 4: Problem 2 Hotel Data
Hotels <- data.frame(Price = c(175, 180, 120, 150, 120, 125, 50, 50, 49, 45, 36, 45, 50, 50, 40), Type = c( rep('Luxury',6), rep('Budget', 9) ) )
head(Hotels)

#filter by Type
LuxuryHotel <- Hotels %>% filter(Type == "Luxury")
BudgetHotel <- Hotels %>% filter(Type == "Budget")

#Mean and Standard Deviation by Type
mean(LuxuryHotel$Price)
sd(LuxuryHotel$Price)

mean(BudgetHotel$Price)
sd(BudgetHotel$Price)

##Problem 5: Histograms for Problem 2 & 4 Data

boxplot(Price~Type, data=Hotels, main="Prices of Luxury and Budget Hotels", col="Magenta", border="Black")