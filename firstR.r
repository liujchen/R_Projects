print(Sys.Date())
a <- c(1, 2, 3, 4)
print(a)
b <- matrix(1:20, nrow = 2)
print(b)

mydate <- function(type) {
    switch(type,
        long = format(Sys.time(), "%A %B %d %Y"),
        short = format(Sys.time(), "%m-%d-%y"),
        cat(type, "is not a recognized type\n")
    )
}
print(mydate("long"))
