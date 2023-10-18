#!/usr/bin/r

# The following operations, called elementary operations, can routinely be 
# performed on systems
# of linear equations to produce equivalent systems.
# I. Interchange two equations.
# II. Multiply one equation by a nonzero number.
# III. Add a multiple of one equation to a different equation.

I <- c(a = 1.50, b = 1.60, c = 1.70, d = 1.80, e = 1.90, f = 1.20, 
          g = 1.20, h = 1.40, i = 1.40, j = 1.50, l = 1.90, m = 1.20,
          n = 1.30, o = 1.40, p = 1.50, q = 1.60, r = 1.80, s = 1.20,
          t = 1.30, u = 1.40, v = 1.50, x = 1.70, z = 1.80, k = 1.20,
          w = 1.70, y = 1.40)

II <- c(a = 2.50, b = 2.60, c = 2.70, d = 2.80, e = 2.90, f = 2.20, 
       g = 2.20, h = 2.40, i = 2.40, j = 2.50, l = 2.90, m = 2.20,
       n = 2.30, o = 2.40, p = 2.50, q = 2.60, r = 2.80, s = 2.20,
       t = 2.30, u = 2.40, v = 2.50, x = 2.70, z = 2.80, k = 2.20,
       w = 2.70, y = 2.40)

III <- c(a = 3.50, b = 3.60, c = 3.70, d = 3.80, e = 3.90, f = 3.20, 
       g = 3.20, h = 3.40, i = 3.40, j = 3.50, l = 3.90, m = 3.20,
       n = 3.30, o = 3.40, p = 3.50, q = 3.60, r = 3.80, s = 3.20,
       t = 3.30, u = 3.40, v = 3.50, x = 3.70, z = 3.80, k = 3.20,
       w = 3.70, y = 3.40)

# Suppose that a sequence of elementary operations is performed on a system 
# of linear equations. Then the resulting system has the same set of solutions 
# as the original, so the two systems are equivalent.

t1 <- Theoph

# The proof is given at the end of this section.
# Elementary operations performed on a system of equations produce corresponding 
# manipulations of the rows of the augmented matrix. Thus, multiplying a row of 
# a matrix by a number k means multiplying every entry of the row by k. Adding 
# one row to another row means adding each entry of that row to the corresponding 
# entry of the other row. Subtracting two rows is done similarly. Note that we regard two
# rows as equal when corresponding entries are the same.

# In hand calculations (and in computer programs) we manipulate the rows of the augmented 
# matrix rather than the equations. For this reason we restate these elementary operations 
# for matrices.

k <- matrix(data = 120, nrow = 500, ncol = 500, byrow = FALSE, dimnames = NULL)
# operation linear matrix builds
restate1 <- k ^ 4
restate2 <- k ^ 5
restate3 <- k ^ 6

# Definition 1.2 Elementary Row Operations
# The following are called elementary row operations on a matrix.
# I. Interchange two rows.
# II. Multiply one row by a nonzero number.
# III. Add a multiple of one row to a different row.

Ia <- k ^ 7
IIb <- k ^ 8
IIIc <- k ^ 9
# defance Ia and Nib and Iii
defance <- Ia + IIb + IIIc
defance1 <- I ^ 4
defance2 <- II ^ 5
defance3 <- III ^ 6

# position linear m1
m1 <- c(follicles ~ sin(2*pi*Time) + cos(2*pi*Time), cars)

# In the illustration above, a series of such operations led to a matrix 
# of the form
m2 <- matrix(data = Ia, nrow = 500, ncol = 500, byrow = FALSE, dimnames = NULL)
m3 <- matrix(data = IIb, nrow = 500, ncol = 500, byrow = FALSE, dimnames = NULL)
m4 <- matrix(data = IIIc, nrow = 500, ncol = 500, byrow = FALSE, dimnames = NULL)

# In the illustration above, a series of such operations led to a matrix 
# of the form

# where the asterisks represent arbitrary numbers. In the case of three equations 
# in three variables, the goal is to produce a matrix of the form

# Systems of Linear Equations
# This does not always happen, as we will see in the next section. Here is an 
# example in which it does happen.

# Example 1.1.3
# Find all solutions to the following system of equations.

call1 <- all(length(0L), na.rm = FALSE)


# Solution. The augmented matrix of the original system 
# is
c3x <- Ia + IIb + IIIc ^ 4
b2x <- Ia + IIb + IIIc ^ 5
c3y <- Ia + IIb + IIIc ^ 6
d4x <- Ia + IIb + IIIc ^ 7

