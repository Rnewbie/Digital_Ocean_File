train <- read.csv("Train.csv", header = TRUE)
test <- read.csv("Test.csv", header = TRUE)
data <- rbind(train, test)
active <- subset(data, Activity == "Active")
active <- active[-1]
inactive <- subset(data, Activity == "Inactive")
inactive <- inactive[-1]

results_active <- data.frame(t(sapply(active, function(cl) list (Mean_of_Actives = round(mean(cl, na.rm = TRUE), digits = 3),
  SD_Actives = round(sd(cl, na.rm  = TRUE), digits = 3)))))
results_inactive <- data.frame(t(sapply(inactive, function(cl) list(Mean_of_Inactives= round(mean(cl, na.rm = TRUE), digits = 3),
                                                                       SD_Inactives = round(sd(cl, na.rm = TRUE), digits = 3)))))
results <- cbind(results_active, results_inactive)
Descriptor_Name <- row.names(results)
df <- cbind(Descriptor_Name, results)
my.df <- data.frame(lapply(df, as.character), stringsAsFactors=FALSE)
write.csv(my.df, file = "EDA_Substructure.csv", row.names = FALSE)
print(df, row.names = FALSE)

####latext table
library(xtable)
table <- xtable(my.df, row.names = FALSE)
print(table,floating=FALSE)
#### 

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
my.df$significant_level <- ifelse(my.df$p.value < 0.05, "Significant", "Unsignificant")
label <- row.names(df)
normality <- cbind(label, my.df)
write.csv(normality, file = "normality_test.csv", row.names = FALSE)


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

### plot for SubStructure SubFPC5, SubFPC26, SubFPC52, SubFPC101, SubFPC135, SubFPC153, SubFPC179 and SubFPC180

a <- ggplot(data, aes(x = SubFPC5, fill = Activity)) +
  geom_histogram(binwidth= 1, alpha = 0.5, colour = "black", position = "dodge") +
  theme(
    legend.position=("none"),
    panel.border = element_rect(linetype = "solid", colour = "black", fill = NA, size = 1)) +
  #labs(y = expression( Predicted~(pIC[50])~ activity)) +
  #labs(x = expression( Exprimental~(pIC[50])~ activity))
  labs(y =  "Frequency") +
  coord_cartesian(ylim = c(0, 50), xlim = c(0, 5))

b <- ggplot(data, aes(x = SubFPC26, fill = Activity)) +
  geom_histogram(binwidth= 1, alpha = 0.5, colour = "black", position = "dodge") +
  theme(
    legend.position=("none"),
    panel.border = element_rect(linetype = "solid", colour = "black", fill = NA, size = 1)) + 
  #labs(y = expression( Predicted~(pIC[50])~ activity)) +
  #labs(x = expression( Exprimental~(pIC[50])~ activity))
  labs(y =  "Frequency") +
  coord_cartesian(ylim = c(0, 50), xlim = c(0, 5))

c <- ggplot(data, aes(x = SubFPC52, fill = Activity)) +
  geom_histogram(binwidth= 1, alpha = 0.5, colour = "black", position = "dodge") +
  theme(
    legend.position=("none"),
    panel.border = element_rect(linetype = "solid", colour = "black", fill = NA, size = 1)) +
  #labs(y = expression( Predicted~(pIC[50])~ activity)) +
  #labs(x = expression( Exprimental~(pIC[50])~ activity))
  labs(y =  "Frequency") +
  coord_cartesian(ylim = c(0, 50), xlim = c(0, 5))

d <- ggplot(data, aes(x = SubFPC100, fill = Activity)) +
  geom_histogram(binwidth= 1, alpha = 0.5, colour = "black", position = "dodge") +
  theme(
    legend.position=("none"),
    panel.border = element_rect(linetype = "solid", colour = "black", fill = NA, size = 1)) +
  #labs(y = expression( Predicted~(pIC[50])~ activity)) +
  #labs(x = expression( Exprimental~(pIC[50])~ activity))
  labs(y =  "Frequency") +
  coord_cartesian(ylim = c(0, 50), xlim = c(0, 5))


e <- ggplot(data, aes(x = SubFPC101, fill = Activity)) +
  geom_histogram(binwidth= 1, alpha = 0.5, colour = "black", position = "dodge") +
  theme(
    legend.position=("none"),
    panel.border = element_rect(linetype = "solid", colour = "black", fill = NA, size = 1)) +
  #labs(y = expression( Predicted~(pIC[50])~ activity)) +
  #labs(x = expression( Exprimental~(pIC[50])~ activity))
  labs(y =  "Frequency") +
  coord_cartesian(ylim = c(0, 50), xlim = c(0, 5))

f <- ggplot(data, aes(x = SubFPC135, fill = Activity)) +
  geom_histogram(binwidth= 1, alpha = 0.5, colour = "black", position = "dodge") +
  theme(
    legend.position=("none"),
    panel.border = element_rect(linetype = "solid", colour = "black", fill = NA, size = 1)) +
  #labs(y = expression( Predicted~(pIC[50])~ activity)) +
  #labs(x = expression( Exprimental~(pIC[50])~ activity))
  labs(y =  "Frequency") +
  coord_cartesian(ylim = c(0, 50), xlim = c(0, 5))

g <- ggplot(data, aes(x = SubFPC153, fill = Activity)) +
  geom_histogram(binwidth= 1, alpha = 0.5, colour = "black", position = "dodge") +
  theme(
    legend.position=("none"),
    panel.border = element_rect(linetype = "solid", colour = "black", fill = NA, size = 1)) +
  #labs(y = expression( Predicted~(pIC[50])~ activity)) +
  #labs(x = expression( Exprimental~(pIC[50])~ activity))
  labs(y =  "Frequency") +
  coord_cartesian(ylim = c(0, 50), xlim = c(0, 5))

h <- ggplot(data, aes(x = SubFPC179, fill = Activity)) +
  geom_histogram(binwidth= 1, alpha = 0.5, colour = "black", position = "dodge") +
  theme(
    legend.position=("none"),
    panel.border = element_rect(linetype = "solid", colour = "black", fill = NA, size = 1)) +
  #labs(y = expression( Predicted~(pIC[50])~ activity)) +
  #labs(x = expression( Exprimental~(pIC[50])~ activity))
  labs(y =  "Frequency") +
  coord_cartesian(ylim = c(0, 50), xlim = c(0, 5))

i <- ggplot(data, aes(x = SubFPC180, fill = Activity)) +
  geom_histogram(binwidth= 1, alpha = 0.5, colour = "black", position = "dodge") + 
  theme(
    legend.position=("none"),
    panel.border = element_rect(linetype = "solid", colour = "black", fill = NA, size = 1)) +
  #labs(y = expression( Predicted~(pIC[50])~ activity)) +
  #labs(x = expression( Exprimental~(pIC[50])~ activity))
  labs(y =  "Frequency") +
  coord_cartesian(ylim = c(0, 50), xlim = c(0, 5))


library(cowplot)
plot_grid(a, b, c, d, e, f, g, h, i, labels = c(" ", " ", " ", " ", " ", " ", " ", " ", ""), ncol = 3, label_size = 20)




















