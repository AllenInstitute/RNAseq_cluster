CalcBrokenStick <- function(x) {
  m <- 0
  out <- matrix(NA, ncol = 3, nrow = length(x))
  colnames(out) <- c("pc", "var_pct", "bstick_thresh")
  for (i in 1:length(x)) {
    for (k in i:length(x)) {
      m <- m + ((1 / length(x)) * (1 / k))
    }
    out[i, ] <- c(i, (x[i] / sum(x)) * 100, m * 100)
    m <- 0
  }
  pc.var.order <- order(out[, "var_pct"], decreasing = TRUE)
  out <- out[pc.var.order, ]
  out[, "bstick_thresh"] <- sort(out[, "bstick_thresh"], decreasing = TRUE)
  return(out)
}
