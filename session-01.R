# Set relevant working directory
setwd("~/Desktop/workshop")

# Load data in:
read.csv(file = "data/inflammation-01.csv", header=FALSE)

weight_kg <- 57.5

# Calculate weight in pounds:
weight_lb <- 2.2 * weight_kg

weight_lb

weight_kg <- 100.0

# Read first inflammation dataset into R:
dat <- read.csv(file = "data/inflammation-01.csv", header=FALSE)

head(dat)

class(dat)

dim(dat)

dat[1, 1]

dat[1:4, 1:10]

dat[c(3, 8, 37, 56), c(10, 14, 29)]

dat[5, ]

dat[, 10]

patient_1 <- dat[1,]
patient_1

max(patient_1)

min(patient_1)

max(dat[1,])

mean(dat[,7])
median(dat[, 7])
mysd <- sd(dat[, 7])
mysd

# Let's find the average inflammation for each individual across all days:
avg_patient_inflammation <- apply(dat, 1, mean)
avg_patient_inflammation

avg_day_inflammation <- apply(dat, 2, mean)
?apply

animal <- c("m", "o", "n", "k", "e", "y")
animal[1:4]
animal[4:1]
4:1
animal[c(4, 3, 2, 1)]
rev(animal, -1)
?rev
rev(animal[1:4])
rev(animal[-5:-6])
-5:-6
animal[-1]
animal[-4]
animal[-1:-4]
-1:-4
animal[c(5, 2, 3)]

# What is the maximum inflammation across all days in our data?
max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)

# What is the minimum?
min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation)

sd_day_inflammation <- apply(dat, 2, sd)
plot(sd_day_inflammation)
?plot
