dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60) # nolint: object_name_linter.
drugB <- c(15, 18, 25, 31, 40) # nolint: object_name_linter.
par(lty = 2, pch = 17)
plot(dose, drugA, type = "b")
