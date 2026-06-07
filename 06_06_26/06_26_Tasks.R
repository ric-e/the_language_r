# --- Task 1: Output Sample ---

# In this task, we focus on learning how outputs function in R. 
# To begin, we create three different objects

n <- 10
s <- "hello"
v <- c(1, 2, 3)

# Notice that in R, we assign values to an object with '<-'. Similar to many simple languages, R does not require as to declare variable type before assignment, we may simply assign as we go. 
# It is equally okay to use '=', in that R will accept, but it is standard practice to use '<-'

n
s
v

# This is called bare printing.
# Since R is an auto-printing language on the console by default, you can simply type the variable, and R will print it out for you. When running R scripts, you have to Source with Echo, because otherwise RStudio and other IDEs capable of reading scripts don't auto-print without you explicitly asking for it

print(n)
print(s) # Notice here, 'print()' displays the quotes when printing a string.
print(v)

# Notice that when we say 'print()', RStudio will print, even when with Source without Echo.
# Using print is the default output in scripts, and still shows the [1] prefix regardless of data type.

cat(n)
cat(s, "\n", sep="") # since 'cat()' doesn't newline on its own, we can do this to manually trigger it. 
cat(v)

# cat() is the other output style in R. Usually, we use it to display data with readable formatting and strips away the indexing
# Notice with 'cat()', the prefix [1] is gone! cat() also doesn't automatically newline.

cat(n, s, v)

# If we attempt to pass several arguments at once (like we did with the newline), R splits them up with a space
# Earlier, when we 'cat()' without newline, R rendered them all on the same line, with nothing separating them. Passing your arguments all at once tells R to separate by a space.

cat(n,s,v, sep=", ")

# It may have been hard to spot earlier but 'cat()' has a default separator, the blank space. 

long_r <- 1:100 # We gloss over, but with a colon you can create a vector that is all the integers, inclusive
print(long_r)

# Notice that as this outputs, it wraps! This is what the '[1]' indices are. They label the index of the first element in the row.
# In R, vectors start at index 1 (not 0!), so that's why we see '[1]' all the time.

# --- Task 2: Assignment Operators --- 

# In this task, we focus on the multitude of different assignment operators in R. 

value1 <- 1
value2 = 2

value3 <- "words"
value4 = "letters"

# On the surface, R provides us with two basic assignment operators.

print(value1)
print(value2)
print(value3)
print(value4)

# Upon observation, it doesn't seem that using '<-' or '=' provides a surface level difference.
# However, when you call functions or methods in R, you need to declare a variable, so '=' is almost exclusively used to set an argument inside a function.

function1 <- function(number) {
  print(number)
}

function1(num=1)

# Here, the function will still print '1' for us, but we use the '=' operator to ensure we don't create a variable we don't want or need.
# This will help keep our code and work space neat and minimalist. If we pay close attention, at no time does 'num' really exist in our environemnt!

6 -> value5

# This is the same as the leftwards assignment operator '<-'. It is particularly useful after a chain, like calculation or a function, and you want to finish by assigning to a variable you eventually need to access.
# It is a highly important ability that comes into play for pipelines. More on this in later days. 

value6 <- 100
value7 <- 200

# We've created some numbers for an example

modifier_function <- function() {
  value6 <- 300
  value7 <<- 400
  cat(value6, value7, sep = ", ")
}

modifier_function()
cat(value6, value7, sep = ", ")

# Upon observation, we can confirm that '<<-' is indeed the super-assignment operator. We also call it the scoping assignment operator.
# It ignores local-level bounds (that many other programming languages are confined by) and can directly reach out and change values.
# This also works if we use mathematical or other operations, not just re-assignment.

cat(x <- 5)

cat(y = 5)

# This helps explain why we use '<-' to assign, and never '='!
# Notice that after doing cat'ing x, it exists. That's not particularly ideal, because it can just be wasted memory
# Now, after cat'ing y, it does not exist. That's because '=' as an operator does not create into memory if it is a parameter. 
