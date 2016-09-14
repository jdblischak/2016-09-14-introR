# Make a function to convert fahrenheit to kelvin
fahr_to_kelvin <- function(temp) {
    kelvin <- ((temp - 32) * (5 / 9)) + 273.15
    return(kelvin)
}

fahr_to_kelvin(32)
?fahr_to_kelvin

fahr_to_kelvin(212)

# Function to convert kelvin to celsius
kelvin_to_celsius <- function(temp) {
    celsius <- temp - 273.15
    return(celsius)
}

kelvin_to_celsius(0)

# Convert fahrenheit to celsius
fahr_to_celsius <- function(temp) {
    temp_k <- fahr_to_kelvin(temp)
    result <- kelvin_to_celsius(temp_k)
    return(result)
}

freezingpoint <- fahr_to_celsius(32.0)
kelvin_to_celsius(fahr_to_kelvin(32))

center <- function(data, desired) {
    # Return a new vector containing the origianl data centered 
    # around the desired value.
    # Example: center(c(1, 2, 3), 0) => c(-1, 0, 1)
    new_data <- (data - mean(data)) + desired
    return(new_data)
}

z <- c(0, 0, 0, 0)
center(z, 3)

dat <- read.csv(file = "data/inflammation-01.csv", header=FALSE)
center(dat[, 4], 0)
head(dat)

min(dat[, 4])
min(center(dat[, 4], 0))

max(dat[, 4])
max(center(dat[, 4], 0))

sd(dat[, 4]) - sd(center(dat[, 4], 0))

analyze <- function(filename) {
    dat <- read.csv(file = filename, header=FALSE)
    ave_day_inflammation <- apply(dat, 2, mean)
    plot(ave_day_inflammation)
    max_day_inflammation <- apply(dat, 2, max)
    plot(max_day_inflammation)
    min_day_inflammation <- apply(dat, 2, min)
    plot(min_day_inflammation)
}

analyze("data/inflammation-01.csv")
analyze("data/inflammation-02.csv")
