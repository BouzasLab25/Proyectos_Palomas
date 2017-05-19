
bw <- read.csv('bird_weights_lab25.csv')
days_labs <- names(bw)[2:length(names(bw))]

# x11(width=5,height=5)
pdf(file='tracking_weights.pdf',width=7,height=6)
par(mar=c(8,5,2,2))
plot(NULL,type='n',xlim=c(1,length(days_labs)),ylim=c(300,700),
     axes=F,ann=F)
for(r in 1:nrow(bw)){
  lines(1:length(days_labs),bw[r,days_labs])
}
axis(2)
axis(1,at=1:length(days_labs),days_labs,las=2,cex.axis=.8)
mtext('Weight [gr]',2,line=3)
mtext('Date',1,line=6)
dev.off()

