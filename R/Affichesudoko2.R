AfficheSudoko2 <- function(z) {
  
  cols <- ifelse(z, "white","black")
  par(mar=c(0,0,0,0), bg="white")
  plot(0.5:9.5, 0.5:9.5, type="n", axes=FALSE, xlab="", ylab="")
  cusr <<- par("usr"); cplt <<- par("plt")
  segments(0.5:9.5, rep(0.5,10), 0.5:9.5, rep(9.5,10), col="black")
  segments(rep(0.5,10), 0.5:9.5, rep(9.5,10), 0.5:9.5, col="black")
  segments(c(0,3,6,9)+0.5, rep(0.5,4), c(0,3,6,9)+0.5, rep(9.5,4), lwd=3)
  segments(rep(0.5,4), c(0,3,6,9)+0.5, rep(9.5,4), c(0,3,6,9)+0.5, lwd=3)
  for (i in 1:9)
    for (j in 1:9)
    {
      text(j, 10-i, z[i,j], col=cols[i,j], font=ifelse(cols[i,j]=="white",2,1),
           cex=ifelse(cols[i,j]=="white", 2.0, 1.8))
    }
  
}
