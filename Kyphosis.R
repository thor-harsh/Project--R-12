install.packages('rpart')
library(rpart)
head(kyphosis)
str(kyphosis)
tree<-rpart(Kyphosis ~ .,data=kyphosis,method='class')
printcp(tree)
plot(tree,uniform=T,main='Kyphosis Tree')
text(tree,use.n=T,all=T)

#Lets plot it better by using rpart.plot library
install.packages('rpart.plot')
library(rpart.plot)
prp(tree)##Much better

install.packages('randomForest')
library(randomForest)
rf.model<-randomForest(Kyphosis ~ .,data=kyphosis)

#Visualizing different instances or values of Random Forest
rf.model$call
rf.model$predicted
rf.model$type
rf.model$ntree
rf.model$confusion
rf.model$mse
rf.model$err.rate
rf.model$forest
plot(rf.model)
prp(rf.model)
