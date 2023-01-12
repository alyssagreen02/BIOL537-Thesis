qqchi<-function(x,...){
  lambda<-round(median(x)/qchisq(0.5,1),2)
  qqplot(qchisq((1:length(x)-0.5)/(length(x)),1),x,ylab="Observed",xlab="Expected",...);abline(0,1,col=2,lwd=2)
  legend("topleft",paste("lambda=",lambda))
}