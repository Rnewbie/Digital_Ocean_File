train <- read.csv("Train.csv", header = TRUE)
test <- read.csv("Test.csv", header = TRUE)
data <- rbind(train, test)
active <- subset(data, Activity == "Active")
active <- active[-1]
inactive <- subset(data, Activity == "Inactive")
inactive <- inactive[-1]

results_active <- data.frame(t(sapply(active, function(cl) list (Mean_of_Actives = mean(cl, na.rm = TRUE),
  SD_Actives = sd(cl, na.rm  = TRUE)))))
results_inactive <- data.frame(t(sapply(inactive, function(cl) list(Mean_of_Inactives= mean(cl, na.rm = TRUE),
                                                                       SD_Inactives = sd(cl, na.rm = TRUE)))))
results <- cbind(results_active, results_inactive)
Descriptor_Name <- row.names(results)
df <- cbind(Descriptor_Name, results)
my.df <- data.frame(lapply(df, as.character), stringsAsFactors=FALSE)
write.table(my.df, file = "EDA_Substructure.csv", row.names = FALSE)
print(df, row.names = FALSE)







