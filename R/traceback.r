is.error <- function(x) inherits(x, "error")

create_traceback <- function(callstack) {
  if (length(callstack) == 0) return()
  max_lines <- getOption("deparse.max.lines", Inf)

  # Convert to text
  calls <- lapply(callstack, deparse, width = getOption("width"))
  if (is.finite(max_lines)) {
    calls <- lapply(calls, function(x) x[seq_len(min(length(x), max_lines))])
  }
  calls <- vapply(calls, paste0, collapse = "\n", FUN.VALUE = character(1))

  # Extract srcrefs
  srcrefs <- lapply(callstack, attr, "srcref")
  has_ref <- !vapply(srcrefs, is.null, logical(1))
  files <-  vapply(srcrefs[has_ref], function(x) attr(x, "srcfile")$filename,
    FUN.VALUE = character(1))
  lines <-  vapply(srcrefs[has_ref], function(x) as.vector(x)[1],
    FUN.VALUE = integer(1))

  calls[has_ref] <- paste0(calls[has_ref], " at ", files, ":", lines)

  # Number and indent
  calls <- str_c(seq_along(calls), ": ", calls)
  calls <- str_replace(calls, "\n", "\n   ")
  calls
}

try_capture_stack <- function(quoted_code, env) {
  capture_calls <- function(e) {
    # Capture call stack, removing last two calls from end (added by
    # withCallingHandlers), and first frame + 7 calls from start (added by
    # tryCatch etc)
    e$calls <- head(sys.calls()[-seq_len(frame + 7)], -2)
    signalCondition(e)
  }
  frame <- sys.nframe()

  tryCatch(
    withCallingHandlers(eval(quoted_code, env), error = capture_calls),
    error = identity
  )
}

