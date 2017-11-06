CountMarkerGenes <- function(expr.dat, clusters, 
                             expr.thresh = 1, cl1.prop = 0.5, cl2.prop = 0.1) {
  
  cl.sizes <- table(clusters)
  cl.props <- t(apply(expr.dat, 1, function(x) {
    tapply(x, clusters, function(y) sum(y > expr.thresh) / length(y))
  }))
  
  min.dex.df <- data.frame()
  if (sum(table(clusters) > 1) > 1) {
    for (i in 1:(ncol(cl.props) - 1)) {
      for (j in (i + 1):ncol(cl.props)) {
        dex.cnt1 <- sum(cl.props[, i] > cl1.prop & cl.props[, j] < cl2.prop)
        dex.cnt2 <- sum(cl.props[, j] > cl1.prop & cl.props[, i] < cl2.prop)
        min.dex.cnt <- min(dex.cnt1, dex.cnt2)
        min.size <- min(cl.sizes[i], cl.sizes[j])
        cl1 <- colnames(cl.props)[i]
        cl2 <- colnames(cl.props)[j]
        min.dex1 <- data.frame(cl1, cl2, min.size, min.dex.cnt, 
                               stringsAsFactors = FALSE)
        min.dex.df <- rbind(min.dex.df, min.dex1)
        
      }
    }
    min.dex.df <- min.dex.df[order(min.dex.df$min.dex.cnt), ]
  }
  
  return(min.dex.df)
}
