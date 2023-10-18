#!/usr/bin/r

# 1.2 Gaussian Elimination
# The algebraic method introduced in the preceding section can be summarized as 
# follows: Given a system of linear equations, use a sequence of elementary row 
# operations to carry the augmented matrix to a “nice” matrix (meaning that the 
# corresponding equations are easy to solve). In Example 1.1.3, this nice matrix
# took the form.

canview <- gaussian(link = "logit")

# A matrix is said to be in row-echelon form (and will be called a row-echelon 
# matrix) if it satisfies the following three conditions:
# 1. All zero rows (consisting entirely of zeros) are at the bottom.
# 2. The first nonzero entry from the left in each nonzero row is a 1, 
# called the leading 1 for that row.
# 3. Each leading 1 is to the right of all leading 1s in the rows above it.
# A row-echelon matrix is said to be in reduced row-echelon form (and will be 
# called a reduced row-echelon matrix) if, in addition, it satisfies the 
# following condition: 
# 4. Each leading 1 is the only nonzero entry in its 
# column.
obj1 <- c(z1 = 2, z2 = 2, z3 = 2, z4 = 2)

# The leading 1s proceed “down and to the right” through the matrix. Entries 
# above and to the right of the leading 1s are arbitrary, but all entries below 
# and to the left of them are zero. Hence, a matrix in row echelon form is in 
# reduced form if, in addition, the entries directly above each leading 1 are 
# all zero. Note that a matrix in row-echelon form can, with a few more row 
# operations, be carried to reduced form (use
food <- start(60, 60)

# Theorem 1.2.1
# Every matrix can be brought to (reduced) row-echelon form by a sequence of 
# elementary row operations.
ps1 <- c(canview = 007,  reduce = 4, start = food, 
         layout.show(n = 1), fitted(canview), skip = 2)


# In fact we can give a step-by-step procedure for actually finding a row-echelon 
# matrix. Observe that while there are many sequences of row operations that will 
# bring a matrix to row-echelon form, the one we use is systematic and is easy to 
# program on a computer. Note that the algorithm deals with matrices in general, 
# possibly with columns of zeros.

### R code from vignette source 'locndimn.Rnw'

###################################################
### code chunk number 1: locndimn.Rnw:25-29
###################################################
library(grDevices)
library(grid)
ps.options(pointsize = 12)
options(width = 60)


###################################################
### code chunk number 2: locndimn.Rnw:57-96
###################################################
diagram.locn <- function(i, n, locn) {
  x <- i/(n+1)
  grid.lines(x = unit(rep(x, 2), "npc"),
             y = unit.c(unit(0, "npc"), locn))
  grid.lines(x = unit(x, "npc") + unit(c(-2, 0, 2), "mm"),
             y = locn + unit(c(-2, 0, -2), "mm"))
  grid.text(paste(as.character(locn), "as a location"),
            x = unit(x, "npc") - unit(1, "mm"),
            y = locn - unit(3, "mm"),
            just = c("right", "bottom"),
            rot = 90)
}
diagram.dimn <- function(i, n, dimn) {
  x <- i/(n+1)
  pushViewport(viewport(x = unit(x, "npc"), y = unit(0, "native"),
                        h = dimn, w = unit(1, "lines"), just = c("centre", "bottom")))
  grid.rect()
  grid.text(paste(as.character(dimn), "as a dimension"),
            rot = 90)
  popViewport()
}
pushViewport(viewport(w = 0.8, y=unit(1.7, "inches"),
                      h = unit(4, "inches"),
                      just = c("centre", "bottom"),
                      yscale = c(-0.6, 1.3)))
grid.grill(v = c(0, 1), h = seq(-0.5, 1, 0.5), default.units = "native")
grid.rect()
grid.yaxis()
n <- 10
diagram.locn(1, n, unit(1, "native"))
diagram.locn(2, n, unit(-0.4, "native"))
diagram.locn(3, n, unit(0.4, "native"))
diagram.locn(4, n, unit(1, "native") + unit(-0.4, "native"))
diagram.locn(5, n, unit(1, "native") - unit(0.4, "native"))
diagram.dimn(6, n, unit(1, "native"))
diagram.dimn(7, n, unit(-0.4, "native"))
diagram.dimn(8, n, unit(0.4, "native"))
diagram.dimn(9, n, unit(1, "native") + unit(-0.4, "native"))
diagram.dimn(10, n, unit(1, "native") - unit(0.4, "native"))


###################################################
### code chunk number 3: locndimn.Rnw:107-119
###################################################
pushViewport(viewport(yscale = c(-0.6, 1.3)))
# Unexpected results?
convertY(unit(1,'native'), "native")
convertY(unit(-.4,'native'), "native")
convertY(unit(1,'native')+unit(-.4,'native'), "native")
convertY(unit(1,'native')-unit(.4,'native'), "native")
# Expected results
convertHeight(unit(1,'native'), "native")
convertHeight(unit(-.4,'native'), "native")
convertHeight(unit(1,'native')+unit(-.4,'native'), "native")
convertHeight(unit(1,'native')-unit(.4,'native'), "native")
popViewport()

