
# install packages section
install.packages("mldr.datasets")
install.packages("utiml")
install.packages("mldr")
install.packages("e1071")
library("utiml")
library("mldr")
library("mldr.datasets")
library("e1071")

#Q3- Split to train - validation 60%-40%
ds <- create_holdout_partition(cal500, c(train=0.6, test=0.4), "iterative")

#Q4- Binary Relevance (BR) multi-label model 

#SVM
brmodel1 <- br(ds$train, "SVM",gamma = 0, seed=1) #gamma = 0
prediction1 <- predict(brmodel, ds$test)
result <- multilabel_evaluate(ds$test, prediction, c("micro-F1", "hamming-loss")) # SVM Evaluation
print(round(result, 3))

brmodel2 <- br(ds$train, "SVM",gamma = 1, seed=1) # gamma = 1
prediction2 <- predict(brmodel2, ds$test)
result2 <- multilabel_evaluate(ds$test, prediction2, c("micro-F1", "hamming-loss")) # SVM Evaluation
print(round(result2, 3))

brmodel3 <- br(ds$train, "SVM",gamma = 2, seed=1) # gamma = 2
prediction3 <- predict(brmodel3, ds$test)
result3 <- multilabel_evaluate(ds$test, prediction3, c("micro-F1", "hamming-loss")) # SVM Evaluation
print(round(result3, 3))

brmodel4 <- br(ds$train, "SVM",gamma = 3, seed=1) # gamma = 3
prediction4 <- predict(brmodel4, ds$test)
result4 <- multilabel_evaluate(ds$test, prediction4, c("micro-F1", "hamming-loss")) # SVM Evaluation
print(round(result4, 3)) 

brmodel5 <- br(ds$train, "SVM",gamma = 4, seed=1) # gamma = 4
prediction5 <- predict(brmodel5, ds$test)
result5 <- multilabel_evaluate(ds$test, prediction5, c("micro-F1", "hamming-loss")) # SVM Evaluation
print(round(result5, 3))


#NB 
brmodel6 <- br(ds$train, "NB", seed=1)
prediction6 <- predict(brmodel6, ds$test)

result6 <- multilabel_evaluate(ds$test, prediction6, c("micro-F1", "hamming-loss")) # NB Evaluation
print(round(result6, 3))

# Random Forest
brmodel7 <- ebr(ds$train, "RF", seed=1, ntree=100) # ntree=100
prediction7 <- predict(brmodel7, ds$test)
result7 <- multilabel_evaluate(ds$test, prediction7, c("micro-F1", "hamming-loss")) # Random Forest Evaluation
print(round(result7, 3))
 
brmodel8 <- ebr(ds$train, "RF", seed=1, ntree=150)  # ntree=150
prediction8 <- predict(brmodel8, ds$test)
result8 <- multilabel_evaluate(ds$test, prediction8, c("micro-F1", "hamming-loss")) # Random Forest Evaluation
print(round(result8, 3))

brmodel9 <- ebr(ds$train, "RF", seed=1, ntree=200) # ntree=200
prediction9 <- predict(brmodel9, ds$test)
result9 <- multilabel_evaluate(ds$test, prediction9, c("micro-F1", "hamming-loss")) # Random Forest Evaluation
print(round(result9, 3))

brmodel10 <- ebr(ds$train, "RF", seed=1, ntree=250) # ntree=250
prediction10 <- predict(brmodel10, ds$test)
result10 <- multilabel_evaluate(ds$test, prediction10, c("micro-F1", "hamming-loss")) # Random Forest Evaluation
print(round(result10, 3))

brmodel11 <- ebr(ds$train, "RF", seed=1, ntree=50) # ntree=50
prediction11 <- predict(brmodel11, ds$test)
result11 <- multilabel_evaluate(ds$test, prediction11, c("micro-F1", "hamming-loss")) # Random Forest Evaluation
print(round(result11, 3))



