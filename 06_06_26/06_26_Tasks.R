# -- Task 1: Output Sample --

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
# Using print is the default output in scripts, and still shows the [1] suffix regardless of data type.

cat(n)
cat(s, "\n") # since 'cat()' doesn't newline on its own, we can do this to manually trigger it. 
cat(v)

# cat() is the other output style in R. Usually, we use it to display data with readable formatting and strips away the indexing
# Notice with 'cat()', the suffix [1] is gone! cat() also doesn't automatically newline.

cat(n, s, v)

# If we attempt to pass several arguments at once (like we did with the newline), R splits them up with a space
# Earlier, when we 'cat()' without newline, R rendered them all on the same line, with nothing separating them. Passing your arguments all at once tells R to separate by a space.

long_r <- 1:100 # We gloss over, but with a colon you can create a vector that is all the integers, inclusive
print(long_r)

# Notice that as this outputs, it wraps! This is what the '[1]' indices are. They label the index of the first element in the row.
# In R, vectors start at index 1 (not 0!), so that's why we see '[1]' all the time. 