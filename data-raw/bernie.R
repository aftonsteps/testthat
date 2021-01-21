## Happy bernie from
## https://www.pngfind.com/mpng/TRixTi_create-your-pic-bernie-sanders-head-png-transparent/

## Bernie in chair from
## https://twitter.com/taber/status/1351938194024124419

## Both turned to ASCII in
## https://manytools.org/hacker-tools/convert-images-to-ascii-art

feel_the_bern <- function(filepath) {
  x <- read.csv(filepath,
                sep = "\t",
                stringsAsFactors = FALSE,
                header = FALSE)

  return(x)
}

bern_files <-
  paste0("data-raw/bernie-ascii/", list.files("data-raw/bernie-ascii/"))

bernie <- lapply(X = bern_files, FUN = feel_the_bern)
names(bernie) <- c("chair", "point")
colnames(bernie$point) <- c("You did it")
colnames(bernie$chair) <- c("Not yet")

usethis::use_data(bernie, overwrite = TRUE)
