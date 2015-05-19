my_number <- 1
my_number
my_number <- 999
my_number 
ls()
die <- 1:6
die
die - 1
die / 2
die * die
1:2
1:4
die <- c(1, 2, 3, 4, 5, 6)
die
is.vector(die)
five <- 5
five
is.vector(five)
length(five)
length(die)
int <- 1L
text <- "ace"
int <- c(1L, 5L)
text <- c("ace", "hearts")
sum(text)
die + 1:2
die %*% die
die %o% die
round(3.1415)
factorial(3)
mean(1:6)
mean(die)
round(mean(die))
sample(x = 1:4, size = 2)
sample(x = die, size = 1)
sample(x = die, size = 1)
sample(x = die, size = 1)
sample(die, size = 1)
round(3,1415, corners = 2)
args(round)
round(3.1415, digits = 2)
sample(die, 1)
sample(size = 1, x = die)
sample(die, size =2 )
sample(die, size = 2, replace = TRUE)
sample(die, size = 1, repalce = TRUE)
dice <- sample(die, size = 2, replace = TRUE)
sum(dice)
dice
dice 
dice
die <- 1:6
dice <- sample(die, size = 2, replace = TRUE)
sum(dice)
roll()
roll <- function() {
  die < 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}
roll()
roll
dice
sqrt(2)
dice <- sample(die, size = 2, replace = TRUE)
two <- 1 + 1
a <- sqrt(2)
roll2 <- function(bones) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}
roll2(bones = 1:4)
roll2(bones = 1:6)
roll2(1:20)
roll2 <- function(bones = 1:6) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}
roll2()
library(ggplot2)
qplot
x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
y <- x^2
y
qplot(x, y)
replicate(3, 1+1)
replicate(10, roll())
rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)
die <- c(1, 2, 3, 4, 5, 6)
die
typeof(die)
int <- c(-1L, 2L, 4L)
int
typeof(int)
sqrt(2)^2 - 2
text <- c("Hello", "World")
text
typeof(text)
typeof("Hello")
3 > 4
logic <- c(TRUE, FALSE, TRUE)
logic
typeof(logic)
typeof(F)
comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp
typeof(comp)
raw(3)
typeof(raw(3))
hand <- c("ace", "king", "queen", "jack", "ten")
hand
typeof(hand)
attributes(die)
names(die)
names(die) <- c("one", "two", "three", "four", "five", "six")
names(die)
attributes(die)
die
die + 1
names(die) <- c("uno", "dos", "tres", "quatro", "cinco", "seis")
die
names(die) <- NULL
die
dim(die) <- c(2, 3)
die
dim(die) <- c(3, 2)
die
dim(die) <- c(1, 2, 3)
die
m <- matrix(die, nrow = 2)
m
m <- matrix(die, nrow = 2, byrow = TRUE)
m
ar <- array(c(11:14, 21:24, 31,34), dim = c(2, 2, 3))
ar
exercise <- c("ace", "king", "queen", "jack", "ten",
              "spades", "spades", "spades", "spades", "spades")
exer <- matrix(exercise, nrow = 5)
exer
hand1 <- c("ace", "king", "queen", "jack", "ten",
           "spades", "spades", "spades", "spades", "spades")
matrix(hand1, nrow= 5)
matrix(hand1, ncol =2)
dim(hand1) <- c(5, 2)

hand2 <- c("ace", "king", "queen", "jack", "ten",
           "spades", "spades", "spades", "spades", "spades")
matirx(hand2, nrow = 5, byrow = TRUE)
matrix(hand2, ncol = 2, byrow = TRUE)
dim(die) <- c(2, 3)
typeof(die)
class(die)
attributes(die)
class("Hello")
class(5)
now <- Sys.time()
now
typeof(now)
class(now)
unclass(now)
mil <- 100000
mil
class(mil) <- c("POSIXct", "POSIXt")
mil
gender <- factor(c("male", "female", "female", "male"))
typeof(gender)
attributes(gender)
unclass(gender)
gender
as.character(gender)
card <- c("ace", "hearts", 1)
card
sum(c(TRUE, TRUE, FALSE, FALSE))
sum(c(1, 1, 0, 0))
as.character(1)
as.logical(1)
as.numeric(FALSE)
list1 <- list(100:130, "R", list(TRUE, FALSE))
list1
card <- list("ace", "hearts", 1)
card
df <- data.frame(face = c("ace", "two", "six"), 
                 suit = c("clubs", "clubs", "clubs"), value = c(1,2, 3))
df
typeof(df)
class(df)
str(df)
df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"), vlaue = c(1, 2, 3),
                 stringsAsFactors = FALSE)
df

library(RCurl)
x <- getURL("https://gist.githubusercontent.com/garrettgman/9629323/raw/e8fb0ee3342589491fdcc0289e4cb205f57e276b/deck.csv")
deck <- read.csv(text = x, header = TRUE)
head(deck)
write.csv(deck, file = "cards.csv", row.names = FALSE)
deck[1, 1]
deck[1, c(1, 2, 3)]
new <- deck[1, c(1, 2, 3)]
new
vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]
deck[1:2, 1, drop = FALSE]
deck[-(2:52), 1:3]
deck[1, ]
deck[1, c(TRUE, TRUE, FALSE)]
rows <- c(TRUE, F, F, F,F ,F, F, F, F,
          F, F, F, F, F,F, F,F, F, F,
          F, F, F, F, F, F, F, F, F)
deck[rows, ]
deck[1, c("face", "suit", "value")]
deck[ , "value"]
deal <- function(cards) {
  cards[1, ]
}
deal(deck)
deck2 <- deck[1:52, ]
head(deck2)
deck3 <- deck[c(2, 1, 3:52), ]
head(deck3)
random <- sample(1:52, size = 52)
random
deck4 <- deck[random, ]
head(deck4)
shuffle <- function(cards){
  random <- sample(1:52, size = 52)
  cards[random, ]
}
deal(deck)
deck2 <- shuffle(deck)
deal(deck2)
deck$value
mean(deck$value)
median(deck$value)
lst <- list(numbers = c(1, 2), logical = TRUE,
            strings = c("a", "b", "c"))
lst
lst[1]
lst$numbers
sum(lst$numbers)
sum(lst[[1]])
lst["numbers"]
lst[["numbers"]]
deck2 <- deck
vec <- c(0, 0, 0, 0, 0, 0)
vec
vec[1]
vec[1] <- 1000
vec
vec[c(1, 3, 5)] <- c(1, 1, 1)
vec
vec[4:6] <- vec[4:6] + 1
vec[7] <- 0
deck2$new <- 1:52
head(deck2)
deck2$new <- NULL
head(deck2)
deck2[c(13, 26, 39, 52), ]
deck2[c(13, 26, 39, 52), 3]
deck2$value[c(13, 26, 39, 52)]
deck2$vlaue[c(13, 26, 39, 52)] <- c(14, 14, 14, 14)
deck2$value[c(13, 26, 39, 52)] <- 14
deck3 <- shuffle(deck)
head(deck3)
vec
vec[c(FALSE, FALSE, FALSE, TRUE, FALSE, FALSE)]
1 > 2
1 > c(0, 1, 2)
c(1, 2, 3) == c(3, 2, 1)
1 %in% c(3, 4, 5)
c(1, 2) %in% c(3, 4, 5)
c(1, 2, 3) %in% c(3, 4, 5)
c(1, 2, 3, 4) %in% c(3, 4, 5)
c(1, 2, 3, 4) %in% c(3, 4, 5)
deck2$face == "ace"
sum(deck2$face == "ace")
deck3$face == "ace"
deck3$value[deck3$face == "ace"]
deck3$value[deck3$face == "ace"] <- 14
head(deck3)
deck4 <- deck
deck4$value <- 0
head(deck4, 13)
deck4$suit == "hearts"
deck4$value[deck4suit == "hearts"]
deck4$value[deck$suit == "hearts"] <- 1
deck4$value[deck$suit == "hearts"]
deck4[deck$face == "queen", ]
deck4[deck$suit == "spades", ]
a <- c(1, 2, 3)
b <- c(1, 2, 3)
c <- c(1, 2, 4)
a == b
b == c
a == b & b == c
deck4$face == "queen" & deck4$suit == "spades"
queenOfspades <- deck$face == "queen" & deck4$suirt == "spades"
deck4[queenOfSpaces, ]
deck4$value[queenOfSpades]
deck4$value[queenOfSpades] <- 13
deck4[queenOfSpades, ]
w > 0
10 < x & x < 20
y == "February"
all(z %in% c("Monday", "Tuesday", "Wednesday", "Tursday", "Friday",
             "Satturday", "Sunday"))
deck5 <- deck
head(deck5, 13)
facecard <- deck5$face %in% c("king", "queen", "jack")
deck5[facecard, ]
1 + NA
NA == 1
c(NA, 1:50)
mean(c(NA, 1:50))
mean(c(NA, 1:50), na.rm  = TRUE)
NA == NA
c(1, 2, 3, NA) == NA
is.na(NA)
vec <- c(1, 2, 3, NA)
is.na(vec)
deck5$value[deck5$face == "ace"] <- NA
head(deck5, 13)
deal(deck)
deal(deck)
deal(deck)
library(devtools)
parenvs(all = TRUE)
as.environment("package:states")
globalenv()
baseenv()
emptyenv()
parent.env(globalenv())
parent.env(emptyenv())
ls(emptyenv())
ls(globalenv())
head(globalenv()$deck, 3)
assign("new", "Hello Global", envir = globalenv())
globalenv()$new
new
new <- "Hello Active"
roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}
show_env <- function(){
  list(ran.in = environment(),
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}
show_env()
show_env()
environment(show_env)
environment(parenvs)
show_env <- function(){
  a <- 1
  b <- 2
  c <- 3
  list(ran.in = environment(),
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}
show_env()
foo <- "take me to your runtime"
show_env <- function(x = foo){
  list(ran.in = environment(),
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}
show_env()
deal <- function() {
  deck[1, ]
}
environment(deal)
deal()
deal()
deal()
DECK <- deck
deck <- deck[-1, ]
deal <- function() {
  card <- deck[1, ]
  deck <- deck[-1, ], envir = globalenv())
  card
}
deal()
deal()
deal()
shuffle <- function(cards){
  random <- sample(1:52, size = 52)
  cards[random, ]
}
head(deck, 3)
a <- shuffle(deck)
head(deck, 3)
head(a, 3)
shuffle <- function() {
  random <- sample(1:52, size = 52)
  assign("deck", DECK[random, ], envir = globalenv())
}
shuffle()
deal()
deal()
setup <- function(deck) {
  DECK <- deck
  
  DEAL <- function() {
    card <- 
  }
  
  SHUFFLE <- function() {
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir  = globalenv())
  }
}

setup <- function(deck) {
  DECK <- deck
  
  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = global())
    card
  }
  
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
  
  list(deal = DEAL, shuffle = SHUFFLE)
}

deal <- cards$deal
shuffle <- cards$shuffle
deal
shuffle
environment(deal)
environment(shuffle)
setup <- function(deck) {
  DECK <- deck
  
  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = parent.env(environment()))
    card
  }
  
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = parent.env(environment()))
  }
  
  list(deal = DEAL, shuffle = SHUFFLE)
}
cards <- setup(deck)
deal <- cards$deal
shuffle <- cards$shuffle
rm(deck)
shuffle()
deal()
deal()
play()
play()
get_symbols <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = TRUE,
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}
get_symbols()
get_symbols()
get_symbols()
score(c("DD", "DD", "DD"))
play <- function(){
  symbols <- get_symbols()
  print(symbols)
  score(symbols)
}
play <- function(){
  # step 1:generate symbols
  symbols <- get_symbols()
  
  # step 2: display the symbols
  print(symbols)
  
  #step 3: score the symbols
  score(symbols)
}
if (num < 0) {
  num <- num * -1
}
num <- 2
if (num < 0) {
  num <- num * -1
}
num
num <- 4
if (num < 0) {
  num <- num * -1
}
num
num <- -1
if (num <  0){
  print("num is negative.")
  print("Don't worry, I'll fix it.")
  num <- num * -1
  print("Now num is posivie.")
}
a <- 3.14
dec <- a - trunc(a)
dec
if (dec >= 0.5) {
  a <- trunc(a) + 1
} else {
  a <- trunc(a)
}
a <- 1
b <- 1
if (a > b) {
  print("A wins!")
  
} else if (a < b) {
  print("B wins!")
} else {
  print("Tie.")
}
score <- function(symbols){
  prize
}
symbols <- c("7", "7", "7")
symbols <- c("B", "BB", "BBB")
symbols <- c("C", "DD", "0")
symbols
symbols[1] == symbols[2] & symbols[2] == symbols[3]
symbols[1] == symbols[2] & symbols[1] == symbols[3]
all(symbols == symbols[1])
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
if (same) {
  prize <- # look up the prize
    
} else if ( # Case 2: all bars) {
  prize <- # assign %5
} else {
  prize <- calculate a prize
}
symbols <- c("B", "BBB", "BB")
all(symbols %in% c("B", "BB", "BBB"))
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if(same) {
  symbol <- symbols[1]
  if (symbols == "DD") {
    prize <- 800
  } else if (symbol == "7") {
    prize <- 80
  } else if (symbol == "BBB") {
    prize <- 40
  } else if (symbol == "BB") {
    prize <- 5
  } else if (symbol == "B") {
    prize <- 10
  } else if (symbol == "C") {
    prize <- 10
  } else if (symbol == "0") {
    prize <- 0
  }
}
payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
             "B" = 10, "C" = 10, "0" = 0)
payouts
payouts["DD"]
payouts["B"]
unname(payouts["DD"])
symbols <- c("7", "7", "7")
symbols[1]
payouts[symbols[1]]
symbols <- c("C", "C", "C")
payouts[symbols[1]]
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")

if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- #assign $5
} else {
  # count cherries
  prize <- #character a prize
}
# count diamonds
# double the prize if necessary
symbols <- c("C", "DD", "C")_
symbols == "C"
sum(symbols == "C")
sym(symbols == "DD")
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- 5
} else {
  cherries <- sum(symbols == "C")
  prize <- # calculate a prize
}
diamonds <- sum(symbols == "DD")
if (cherries == 2){
  prize <- 5
} else if (cherries == 1) {
  prize <- 2
} else {}
prize <- 0
}
c(0, 2, 5)
cherries + 1
c(0, 2, 5)[cherries + 1]
cherries + 1
c(0, 2, 5)[cherries + 1]
cherries + 1
c(0, 2, 5)[cherries + 1]
cherries + 1
c(0, 2, 5)[cherries + 1]
prize * 2 ^ diamonds
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if (same) {
  payouts <- c("DD" = 100, "7" = 88, "BBB" = 40, "BB" = 25, 
               "B" = 10, "C" = 10, "0" = )
}
prize * 1
prize * 2
prize * 4
prize * 8
prize * 2 ^ diamonds
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25,
               "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- 5
} else {
  cherries <- sum(symbols == "C")
  prize <- c(0, 2, 5)[cherries + 1]
}
diamonds <- sum(symbols == "DD")
prize * 2 ^ diamonds

# idenfity case
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
bars <- symbols %in% c("B", "BB", "BBB")
# get prize 
if (same) {
  payouts <- c("DD" = 100, "7" = 80, "BBB", = 40, "BB" = 25,
               "B" = 10, "C" = 10, "0"= 0)
  prize <- unname(payouts[symbols[1]])
} else if (all(bars)) {
  prize <- 5
} else {
  cherries <- sum(symbols == "C")
  prize <- c(0, 2, 5)[cherries + 1]
}

diamonds <- sum(symbols == "DD")
prize * 2 ^ diamonds

play <- function() {
  symbols <- get_symbols()
  print(symbols)
  score(symbols)
}
play()
play()
play()
one_play <- play()
one_play
num <- 10000000
print(num)
class(num) <- c("POSIXct", "POSIXt")
print(num)
attributes(DECK)
row.names(DECK)
row.names(DECK) <- 101:152
levels(DECK) <- c("level 1", "level 2", "level 3")
attributes(DECK)
one_play <- play()
one_play
attributes(one_play)
attr(one_play, "symbols") <- c("B", "0", "B")
attributes(one_play)
attr(one_play, "symbols")
one_play
one_play  + 1
play <- function() {
  symbols <- get_symbols()
  print(symbols)
  scoe(symbols)
}
play <- function() {
  symbols <- get_symbols()
  prize <- score(symbols)
  attr(prize, "symbols") <- symbols
  prize
}
play()
two_play <- play()
two_play
play <- function(){
  symbols <- get_symbols()
  structure
}
slot_display <- function(prize) {
  # extract symbols
  symbols ,- attr(prize, "symbols")
  # collapse symbols into single string
  symbols <- paste(symbols, collapse = "")
  # combine symbol with prize as a regular expression
  # |n is regular expression fro new line (i.e. return or enter)
  string <- paste(symbols, prize, sep = "\n$")
  cat(string)
}
slot_display(one_play)
symbols <- attr(one_play, "symbols")
symbols
symbols <- paste(symbols, collapse =  "")
prize <- one_play
string <- paste(symbols, prize, sep = "\n$")
string
cat(string)
slot_display(play())
slot_display(play())
print(pi)
pi
print(head(deck))
head(deck)
print(play())
play()
num <- 1000000
print(num)
class(num) <- c("POSIXct", "POSIXt")
print(num)
print
print.POSIXct
print.factor
methods(print)
class(one_play) <- "slots"
args(print)
plot.slots <- function(x, ...) {
  cat("I'm using the print.slots method")
}
print(one_play)
one_play
rm(print.slots)
now <- Sys.time()
attributes(now)
print.slots <- function(x, ...) {
  slot_display(x)
}
one_play
play <- function() {
  symbols <- get_symbols()
  structure(score(symbols), symbols = symbols)
}
play <- function() {
  symbols <- get_symbols()
  structure(score(symbols), symbols = symbols, class = "slots")
}
class(play())
play()
methods(class = "factor")
play1 <- play()
play1
play2 <- play()
play2
c(play1, play2)
die <- c(1, 2, 3, 4, 5, 6)
rolls <- expand.grid(die, die)
rolls
rolls$value <- rolls$Var1 + rolls$Var2
head(rolls, 3)
prob <- c("1" = 1/8, "2" = 1/8, "3" = 1/8, "4" = 1/8, "5" = 1/8, "6" = 3/8)
prob
rolls$Var1
prob[rolls$Var1]
rolls$prob1 <- prob[rolls$Var1]
head(rolls, 3)
rolls$prob1 <- prob[rolls$Var1]
head(rolls, 3)
rolls$prob2 <- prob[rolls$Var2]
head(rolls, 3)
rolls$prob <- rolls$prob1 * rolls$prob2
head(rolls, 3)
sum(rolls$value * rolls$prob)
wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
combos <- expand.grid(wheel, wheel, wheel, stringsAsFactors = FALSE)
combos
get_symbols <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "C", "0")
  sample(sheel, size = 3, repalce = TRUE,
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}
combos$prob1 <- prob[combo$Var1]
combos$prob2 <- prob[combos$Var2]
combo$prob3 <- prob[combos$Var3]
head(combos, 3)
combos$prob <- combos$prob1 * combo$prob2 * combos$prob3
head(combos, 3)
sum(combos$prob)
symbols <- c(combos[1, 1], combos[1, 2], combos[1,3])
score(symbols)
for (vlaue in that) {
  this
}
for (value in c("My", "first", "for", "loop")) {
  print("one run")
}
for (value in c("My", "second", "for", "loop")) {
  print(value)
}
value
for (word in c("My", "second", "for", "loop")) {
  print(word)
}
for (string in c("My", "second", "for", "loopo")) {
  print(string)
}
for (i in c("My", "second", "for", "loop")) {
  print(i)
}
for (value in c("My", "third", "for", "loop")){
  value
}
chars <- vector(length = 4)
words <- c("My", "fourth", "for", "looop")

for (i in 1:4) {
  chars[i] <- words[i]
}
chars
combos$prize <- NA
head(combos, 3)
for (i in 1:nrow(combos)) {
  symbols <- c(combos[i, 1], combos[i, 2], combos[i, 3])
  combos$prize[i] <- score(symbols)
}
head(combos, 3)
sum(combos$prize * combos$prob)
score <- function(symbols){
  diamonds <- sum(symbols == "DD")
  cherries <- sum(symbols == "C")
  # identify case
  # since diamonds are wild, only nodiamonds
  # matter for three of a kind and all bars
  slots <- symbols[symbols != "DD"]
  same <- length(unique(slots)) == 1
  bars <- slot %in% c("B", "BB", "BBB")
  
  # assign prize
  if (diamonds ==3) {
    prize <- 100
  } else if (same) {
    payouts <- c("7" = 80, "BBB" = 40, "BB" = 25,
                 "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[slots[1]])
  } else if (all(bars)) {
    prize <- 5
  } else if (cherries > 0) {
    # diamonds count as cherries
    # so long as there is one real cherry
    prize <- c(0, 2, 5)[cherries + diamonds + 1]
  } else {
    prize <- 0
  }
  # double for each diamonds
  prize * 2*^diamonds
}
for (i in 1:nrow(combos)) {
  symbols <- c(combos[i, 1], combos[i, 2], combos[i, 3])
  combos$prize[i] <- score(symbols)
}
sum(combos$prize * combos$prob)
while(condition) {
  code
}
play_till_broke <- function(start_with) {
  cash <- start_with
  n <- 0
  while (cash > 0) {
    cash <- cash -1 + play()
    n <- n + 1
  }
  n
}
plays_till_broke(100)
play_till_broke <- function(start_with) {
  case <- start_with
  n <- 0
  repeat {
    cash <- cas - 1 + play()
    n <- n + 1
    if (case <= 0) {
      break
    }
  }
  n
}
play_till_broke(100)
abs_looop <- function(vec){
  for (i in 1:length(vec)) {
    if (vec[i] <- 0) {
      vec[i] <- -vec[i]
    }
  }
  vec
}
abs_sets <- function(vec) {
  negs < - vec < 0
  vec[negs] <- vec[negs] * -1
  vec
}
log <- rep(c(-1, 1), 500000)
system.time(abs_loop(long))
system.time(abs_sets(long))
system.time(abs(long))
vec <- c(1, -2, -3, -4, 5, -6, -7, -8, 9, -10)
vec <- 0
vec[vec < 0]
vec[vec < 0] * 1
change_symbols <- function(vec) {
  for (i in 1:length(vec)){
    if (vec[i] == "DD") {
      vec[i]  <- "joker"
    } else if (vec[i] == "C") {
      vec[i] <- vec[i] == "7") {
  vec[i] <- "king"
} else if (vec[i] == "B") {
  vec[i] <- "queen"
} else if (vec[i] == "BB") {
  vec[i] <- "jack"
} else if (vec[i] == "BBB") {
  vec[i] <- "ten"
} else {
  vec[i] <- "ten"
} else {
  vec[i] <- "nine"
}
    }
  }
vec
}
vec <- c("DD", "C", "7", "B", "BB", "BBB", "0")
change_symbols(vec)
many <- rep(vec, 100000)
system.time(change_symbols(many))
vec[vec == "DD"]
vec[vec == "C"]
vec[vec == "7"]
vec[vec == "B"]
vec[vec == "BB"]
vec[vec == "BBB"]
vec[vec == "0"]
vec[vec == "DD"] <- "joker"
vec[vec == "C"] <- "ace"
vec[vec == "7"] <- "king"
vec[vec == "B"] <- "queen"
vec[vec == "BBB"] <- "ten"
vec[vec == "0"] <- "nine"
change_vec <- function (vec) {
  vec[vec == "DD"] <- "joker"
  vec[vec == "C"] <- "ace"
  vec[vec == "7"] <- "king"
  vec[vec == "B"] <- "queen"
  vec[vec == "BB"] <- "jack"
  vec[vec == "BBB"] <- "ten"
  vec[vec == "0"] <- "nine"
  
  vec
}
system.time(change_vec(many))
change_vec2 <- function(vec){
  tb <- c("DD" = "joker", "C" = "Ace", "7" = "king", "B", "queen"),
  "BB" = "jack", "BBB" = "ten", "0" = "nine")
unname(tb[vec])
}
system.time(change_vec(many))
system.time(
  output <- rep(NA, 100000)
  for (i in 1:1000000) {
    output[i] <- i + 1
  })
system.time(
  output <- NA
  for (i in 1:100000) {
    output[i] <- i + 1
  })
winnings <- vector(length = 1000000)
for (i in 1:100000){
  winning[i] <- play()
}
mean(winnings)
system.time(for (i in 1:1000000) {
  winnings[i] <- play()
})
get_many_symbols <- function(n) {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  vec <- sample(wheel, size = 3 * n, repalce = TRUE,
                prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
  matrix(vec, ncol = 3)
}
get_many_symbols(5)
play_many <- function(n) {
  symb_mat <- get_many_symbols(n = n)
  data.frame(w1 = symb_mat[, 1], w2 = symb_mat[, 2],
             w3 = symb_mat[, 3] prize = score_may(symb_mat))
}
symbols <- matrix(
  c("DD", "DD", "DD",
    "C", "DD",  "0",
    "B", "B", "B",
    "B", "BB", "BBB",
    "C", "C", "0",
    "7", "DD", "DD"), nrow = 6, byrow = TRUE)
symbols
score_many <- function(symbols) {
  # Step 1: assign base prize based on cherries and diamons -----
  ## count the number of cherries and diamonds in ecah combination
  cherries <- rowSums(symbols = "C")
  diamonds <- rowSums(symbols == "DD")
  ## Wild diamonds count as cherries
  prize <- c(0, 2, 5)[cherries + diamonds + 1]
  # ....but not if there are zero real cherries
  ### (cherries is coerced to FALSE where cherries == 0)
  prize[!cherries] <- 0
  # Step 2: Change prize for combintation that contain three of a kind
  same <- symbols[, 1] == symbols[, 2] &
    symbols[, 2] == symbols[, 3]
  payoffs <- c("DD" = 100, "7" = 80, "BBB" = 40,
               "BB"  = 25, "B" = 10, "C" = 10, "0" = 0)
  prize[same] <- payoffs[symbols[same, 1]]
  # Step 3: change prize for combination that contain all bars ------
  bars <- symbols == "B" | symbols == "BB" | symbols == "BBB"
  all_bars <- bars[, 1] & bars[, 2] & bars[, 3] % !same
  prize[all_bars] <- 5
  # Step 4: handel wilds ----------------------
  ## combos with two diamonds
  two_wilds <- diamonds == 2
  ### Identify the nonwild symbol
  one <- two_wilds & symbols[, 1] != symbols[, 2] &
    symbols[, 2] == symbols[, 3]
  two <- two_wilds & symbols[, 1] != symbols[, 2] &
    symbols[, 1] == symbols[, 3]
  three <- two_wilds & symbols[, 1] == symbols[, 2] &
    symbols[, 2] != symbols[, 3]
  
  #### Treat as three of a kind
  prize[one] <- payoffs[symbols[one, 1]]
  prize[two] <- payoffs[symbols[two, 2]]
  prize[three] <- payoffs[symbols[three, 3]]
  ## combs with one wild
  one_whild <- diamonds == 1
  ## Treat as all bars (if appropriate)
  wild_bars <- one_wild & (rowSumbs(bars) == 2)
  prize[wild_bars] <- 5
  ### Treat as three of a kind (if appropriate)
  one <- one_wild & symbols[, 1] == symbols[, 2]
  two <- one_wild & symbols[, 2] == symbols[, 3]
  three <- one_wild & symbols[, 3] == symbols[, 1]
  prize[one] <- payoffs[symbols[one, 1]]
  prize[two] <- payoffs[symbols[two, 2]]
  prize[three] <- payoffs[symbols[three, 3]]
  # Step 5: Double prize for every diamond in combo -----
  unname(prize * 2^diamonds)
}
system.time(play_many(100000))
