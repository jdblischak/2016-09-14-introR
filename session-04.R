analyze <- function(filename) {
  dat <- read.csv(file = filename, header=FALSE)
  ave_day_inflammation <- apply(dat, 2, mean)
  plot(ave_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

filenames <- list.files(path = "data",
                        pattern = "inflammation",
                        full.names = TRUE)
for (f in filenames) {
  print(f)
  analyze(f)
}

analyze_all <- function(pattern) {
  filenames <- list.files(path = "data",
                          pattern = pattern,
                          full.names = TRUE)
  for (f in filenames) {
    print(f)
    analyze(f)
  }
}
analyze_all("inflammation")

pdf("inflammation-01.pdf")
analyze("data/inflammation-01.csv")
dev.off()

num <- 100
if (num > 100) {
  print("greater")
} else {
  print("not greater")
}

num > 100
num < 100
num == 100

num <- 37
if (num > 100) {
  print("greater")
}

# function that determines the sign of a
# number
sign <- function(num) {
  if (num > 0) {
    # do thing 1
    # do thing 2
    # do thing 3
    return(1)
  } else if (num == 0) {
    return(0)
  } else {
    return(-1)
  }
}
sign(100)
sign(0)
sign(-567)

# "and" -> &
# "or"-> |
10 > 20 | 10 > 4 # TRUE
10 > 20 & 10 > 4 # FALSE
# Exclusive
x <- 1:10
x > 5

dat <- read.csv("data/inflammation-01.csv", header = FALSE)

# length is a function to give the lenght of a vector

plot_dist <- function(x, threshold) {
  if (length(x) > threshold) {
    boxplot(x)
  } else {
    stripchart(x)
  }
}

plot_dist(dat[, 10], threshold = 10)     # day (column) 10
plot_dist(dat[1:5, 10], threshold = 10)  # samples (rows) 1-5 on day (column) 10

# Plots the average, min, and max inflammation over days.
# Input:
#   filename: character string of csv file
#   output: character string of pdf file to save plots
#
analyze <- function(filename, output = NULL) {
  if (!is.null(output)) {
    pdf(output)
  }
  dat <- read.csv(file = filename, header=FALSE)
  ave_day_inflammation <- apply(dat, 2, mean)
  plot(ave_day_inflammation, type = "l", col = "red")
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation, type = "l", col = "red")
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation, type = "l", col = "red")
  if (!is.null(output)) {
    dev.off()
  }
}
analyze("data/inflammation-01.csv")
analyze("data/inflammation-01.csv", output = "test.pdf")

dir.create("results")
analyze("data/inflammation-01.csv",
        output = "results/inflammation-01.pdf")

f <- "inflammation-01.csv"
sub("csv", "pdf", f)

file.path("results", f)

analyze_all <- function(pattern) {
  data_dir <- "data"
  results_dir <- "results"
  filenames <- list.files(path = data_dir,
                          pattern = pattern)
  for (f in filenames) {
    print(f)
    pdf_name <- file.path(results_dir, sub("csv", "pdf", f))
    csv_name <- file.path(data_dir, f)
    analyze(csv_name, output = pdf_name)
  }
}
analyze_all("inflammation")

stopifnot(file.exists(f))
tryCatch()





