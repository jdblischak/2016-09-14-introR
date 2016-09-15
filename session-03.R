
display <- function(a = 1, b = 2, c = 3) {
  results <- c(a, b, c)
  names(results) <- c("a", "b", "c")
  return(results)
}
display()
display(c = 55, a = 5)

best_practice <- c("Let", "the", "computer", "do", "the", "work")

print_words <- function(sentence) {
  print(sentence[1])
  print(sentence[2])
  print(sentence[3])
  print(sentence[4])
  print(sentence[5])
  print(sentence[6])
}
print_words(best_practice)

print_words(best_practice[-6])

print_words <- function(sentence) {
  for (word in sentence) {
    print(word)
  }
}
print_words(best_practice)
print_words(best_practice[-6])

letter <- "z"
for (letter in c("a", "b", "c")) {
  print(letter)
}
letter

vowels <- c("a", "e", "i", "o", "u")
len <- 0
for (apple in vowels) {
  len <- len + 1
}


# Exponentiation exercise
2^4

expo <- function(base, power) {
  result <- 1
  for (i in 1:power) {
    result <- result * base
  }
  return(result)
}
expo(2, 4)
6^5
expo(6, 5)

print_N <- function(N) {
  nseq <- seq(N)
  for (onion in nseq) {
    print(onion)
  }
}
print_N(3)
print_N(10)

print_N <- function(N) {
  for(onion in 1:N) {
    print(onion)
  }
}

# create a function to sum numbers
total <- function(vec) {
  vec_sum <- 0
  for (num in vec) {
    print("vec_sum is")
    print(vec_sum)
    print("num is")
    print(num)
    vec_sum <- vec_sum + num
  }
  return(vec_sum)
}
total(vec = c(10, 2, -1))
total(c(100, 987, -87, 90))
sum(c(100, 987, -87, 90))


filenames <- list.files(path = "data",
                        pattern = "inflammation",
                        full.names = TRUE)
for (f in filenames) {
  print(f)
  analyze(f)
}












