library(data.table)

high.seed<-1
low.seed<-1

high.name<-"UVA"
low.name<-"Kansas"

high.w<-(sum(high.seed, low.seed) - high.seed)/sum(high.seed, low.seed)
low.w<-1-high.w

geocoeff<-runif(100)

sim.result<-ifelse(geocoeff >= high.w, low.name, high.name)

result<-table(sim.result)
result
#table(sim.result)[2][1]
#table(sim.result)[2]

#max(table(sim.result))


#----------------random---------
teams<-c("Team A", "Team B")

sim.result<-sample(teams, 100, replace = TRUE) #, prob = c(high.seed, low.seed))
result<-table(sim.result)
result
