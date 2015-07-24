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
write.csv(my.df, file = "EDA_Substructure.csv", row.names = FALSE)
print(df, row.names = FALSE)
#####
###T test and p value

train <- read.csv("Train.csv", header = TRUE)
test <- read.csv("Test.csv", header = TRUE)
data <- rbind(train, test)

ok <- t(sapply(data[-1], function(x) unlist(t.test(x~data$Activity)[c("estimated",
                                                             "p.value",
                                                             "statistic",
                                                             "conf.int")])))
df <- data.frame(ok)
my.df <- data.frame(lapply(df, as.character), stringsAsFactors=FALSE)
my.df$statistic <- ifelse(my.df$p.value < 0.05, "significant", "unsignificant")
label <- row.names(df)
good <- cbind(label, my.df)

write.csv(good, file = "TandP.csv", row.names = FALSE)


#### Normaliy and Difference Test



normality_test <- t(sapply(data[, 2:27], function(x)  shapiro.test(x)[c("statistic", "p.value",
                                                                       "method")]))

df <- data.frame(normality_test)
my.df <- data.frame(lapply(df, as.character), stringsAsFactors=FALSE)
my.df$significant_level <- ifelse(my.df$p.value < 0.05, "significant", "unsignificant")
label <- row.names(df)
normality <- cbind(label, my.df)
write.csv(normality, file = "normality_test.cv", row.names = FALSE)


Mann_Whitney <- t(sapply(data[-1], function(x) unlist(pairwise.wilcox.test(x, data$Activity, 
                                                                   alt = "two.sided",
                                                                   conf.int = TRUE,
                                                                   conf.level = 0.95,
                                                                   exact = FALSE)[c("statistic.W", "p.value", 
                                                                                    "method", "conf.int",
                                                                                    "conf.level")])))

df <- data.frame(Mann_Whitney)
my.df <- data.frame(lapply(df, as.character), stringsAsFactors=FALSE)
my.df$significant_level <- ifelse(my.df$p.value < 0.05, "significant", "unsignificant")
label <- row.names(df)
Mann_Whitney <- cbind(label, my.df)
write.csv(Mann_Whitney, file = "Mann_Whitney_test.csv", row.names = FALSE)










