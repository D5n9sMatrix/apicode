#!/usr/bin/r

# To create a 1 in the upper left corner we could multiply row 1 through by 13 
# . However, the 1 can be obtained without introducing fractions by subtracting 
# row 2 from row 1. The result is
R1 <- c(a = 1.50, b = 1.60, c = 1.70, d = 1.80, e = 1.90, f = 1.20, 
        g = 1.20, h = 1.40, i = 1.40, j = 1.50, l = 1.90, m = 1.20,
        n = 1.30, o = 1.40, p = 1.50, q = 1.60, r = 1.80, s = 1.20,
        t = 1.30, u = 1.40, v = 1.50, x = 1.70, z = 1.80, k = 1.20,
        w = 1.70, y = 1.40)

R2 <- c(a = 1.50, b = 1.60, c = 1.70, d = 1.80, e = 1.90, f = 1.20, 
        g = 1.20, h = 1.40, i = 1.40, j = 1.50, l = 1.90, m = 1.20,
        n = 1.30, o = 1.40, p = 1.50, q = 1.60, r = 1.80, s = 1.20,
        t = 1.30, u = 1.40, v = 1.50, x = 1.70, z = 1.80, k = 1.20,
        w = 1.70, y = 1.40)

R3 <- c(a = 1.50, b = 1.60, c = 1.70, d = 1.80, e = 1.90, f = 1.20, 
        g = 1.20, h = 1.40, i = 1.40, j = 1.50, l = 1.90, m = 1.20,
        n = 1.30, o = 1.40, p = 1.50, q = 1.60, r = 1.80, s = 1.20,
        t = 1.30, u = 1.40, v = 1.50, x = 1.70, z = 1.80, k = 1.20,
        w = 1.70, y = 1.40)

R4 <- c(a = 1.50, b = 1.60, c = 1.70, d = 1.80, e = 1.90, f = 1.20, 
        g = 1.20, h = 1.40, i = 1.40, j = 1.50, l = 1.90, m = 1.20,
        n = 1.30, o = 1.40, p = 1.50, q = 1.60, r = 1.80, s = 1.20,
        t = 1.30, u = 1.40, v = 1.50, x = 1.70, z = 1.80, k = 1.20,
        w = 1.70, y = 1.40)

R5 <- c(a = 1.50, b = 1.60, c = 1.70, d = 1.80, e = 1.90, f = 1.20, 
        g = 1.20, h = 1.40, i = 1.40, j = 1.50, l = 1.90, m = 1.20,
        n = 1.30, o = 1.40, p = 1.50, q = 1.60, r = 1.80, s = 1.20,
        t = 1.30, u = 1.40, v = 1.50, x = 1.70, z = 1.80, k = 1.20,
        w = 1.70, y = 1.40)

# passing matching partial method reference doc speed humanity
# types of partial reference doc speed humanity

x1 <- spec.taper(R1, p = 0.1)
x2 <- spec.taper(R1, p = 0.1)
x3 <- spec.taper(R1, p = 0.1)
x4 <- spec.taper(R1, p = 0.1)
x5 <- spec.taper(R1, p = 0.1)

# The upper left 1 is now used to “clean up” the first column, that is create 
# zeros in the other positions in that column. First subtract 2 times row 1 
# from row 2 to obtain

cleanup <- x1 + x2 + x3 / x4 ^ x5


# This completes the work on column 1. We now use the 1 in the second position 
# of the second row to clean up the second column by subtracting row 2 from row 
# 1 and then adding row 2 to row 3. For convenience, both row operations are done 
# in one step. The result is
work1 <- x1 + x2 + x3 / x4 ^ x5
