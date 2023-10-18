#!/usr/bin/r

# Every elementary row operation can be reversed by another elementary row operation 
# of the same type (called its inverse). To see how, we look at types I, II, and III separately:
#  Type I Interchanging two rows is reversed by interchanging them again.
# Type Ii Multiplying a row by a nonzero number k is reversed by multiplying by 1/k.
# Type Iii Adding k times row p to a different row q is reversed by adding −k times row p to row q
# (in the new matrix). Note that p 6= q is essential here.
# To illustrate the Type III situation, suppose there are four rows in the original matrix, denoted R1 , R2 ,
# R3 , and R4 , and that k times R2 is added to R3 . Then the reverse operation adds −k times R2 , to R3 . The
# following diagram illustrates the effect of doing the operation first and then the reverse:

Ii <- R1 + R2 + R3 + R4
Iii <- message(Ii, domain = NULL, appendLF = TRUE)

require(graphics)
(yl <- range(beaver1$temp, beaver2$temp))

beaver.plot <- function(bdat, ...) {
  nam <- deparse(substitute(bdat))
  with(bdat, {
    # Hours since start of day:
    hours <- time %/% 100 + 24*(day - day[1]) + (time %% 100)/60
    plot (hours, temp, type = "l", ...,
          main = paste(nam, "body temperature"))
    abline(h = 37.5, col = "gray", lty = 2)
    is.act <- activ == 1
    points(hours[is.act], temp[is.act], col = 2, cex = .8)
  })
}
op <- par(mfrow = c(2, 1), mar = c(3, 3, 4, 2), mgp = 0.9 * 2:0)
beaver.plot(beaver1, ylim = yl)
beaver.plot(beaver2, ylim = yl)
par(op)
