# nocov start
praise <- function() {
  x <- bernie$point
  return(x)
}

praise_emoji <- function() {
  if (!cli::is_utf8_output()) {
    return("")
  }

  emoji <- c(
    "\U0001f600", # smile
    "\U0001f973", # party face
    "\U0001f638", # cat grin
    "\U0001f308", # rainbow
    "\U0001f947", # gold medal
    "\U0001f389", # party popper
    "\U0001f38a" # confetti ball
  )
  sample(emoji, 1)
}

encourage <- function() {
  x <- bernie$chair
  return(x)
}
# nocov end
