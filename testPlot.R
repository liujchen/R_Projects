library("extrafont")
x <- c(1:10)
y <- x
z <- 10 / x

opar <- par(no.readonly = TRUE)
par(mar = c(5, 4, 4, 8) + 0.1, family = "Arial Unicode MS")

plot(x, y, type = "b", pch = 21, col = "red", yaxt = "n", lty = 3, ann = FALSE)
axis(2, at = y, labels = x, col.axis = "blue", las = 2)
lines(x, z, type = "b", pch = 22, col = "green", lty = 2)
title(main = "坐标轴的例子", xlab = "x轴", ylab = "y轴")