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
                header = FALSE) %>%
    dplyr::select("Not yet" = V1)

  return(x)
}

bern_files <-
  paste0("data-raw/bernie-ascii/", list.files("data-raw/bernie-ascii/"))

bernie <- lapply(X = bern_files, FUN = feel_the_bern)
names(bernie) <- c("point", "chair")

usethis::use_data(bernie, overwrite = TRUE)
