sarsas = read.table("sarsa_record.csv", header=1, sep=",", fill=1)
ma <- function(x,n=200){filter(x,rep(1/n,n), sides=2)}
svg(filename="sarsa.svg", width=7, height=4)
plot(1:1500, sarsas$reward[1:1500], type="n", main="Cliff Sensor Experiment", ylab="Rolling Average of Reward", xlab="Timesteps", ylim=c(-10,60))
lines(1:1500, ma(sarsas$reward[1:1500]))
lines(1:1500, ma(sarsas$reward.1[1:1500]))
lines(1:1500, ma(sarsas$reward.2[1:1500]))
lines(1:1500, ma(sarsas$reward.3[1:1500]))
lines(1:1500, ma(sarsas$reward.4[1:1500]))
lines(1:1500, ma(sarsas$reward.5[1:1500]))
lines(1:1500, ma(sarsas$reward.6[1:1500]))
lines(1:1500, ma(sarsas$reward.7[1:1500]))
dev.off()

ma <- function(x,n=2000){filter(x,rep(1/n,n), sides=2)}
sarsas = read.table("cheating1.csv", header=1, sep=",", fill=1)
svg(filename="cheatings.svg", width=7, height=4)
plot(1:16000, sarsas$reward[1:16000], type="n", main="Action Feedback Experiment", ylab="Rolling Average of Reward", xlab="Timesteps (about 15ms) (Total time: 4 minutes)", ylim=c(0,2.5))
lines(1:16000, ma(sarsas$reward[1:16000]))
