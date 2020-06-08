library(readr)
install.packages("arules")
library(arules)
install.packages("arulesViz")
library(arulesViz)
book<-read.csv("E:\\Assignment\\Association rules\\book.csv")
View(book)
class(book)
book_trans<-as(as.matrix(book),"transactions")
inspect(book_trans[1:100])
# If we inspect book_trans
# we should get transactions of items i.e.
# As we have 2000 rows ..so we should get 2000 transactions 
# Each row represents one transaction
# After converting the binary format of data frame from matrix to transactions
# Perform apriori algorithm 
rules<-apriori(as.matrix(book),parameter = list(support=0.002,confidence=0.7))
inspect(rules[1:100])
#Visulization####
plot(rules)
plot(rules, method = "matrix3D", measure = "lift")
plot(rules, method = "two-key plot")
plot(rules, method = "paracoord")
### changing the value of support and confidence###
rules1<-apriori(as.matrix(book),parameter = list(support=0.2,confidence=0.5))
inspect(rules1[1:100])
## visulaization###
plot(rules1)
plot(rules1, method = "two-key plot")
##### changing the value of support and confidence###
rules2<-apriori(as.matrix(book),parameter = list(support=0.02,confidence=0.6))
inspect(rules2[1:100])
## visulaization###
plot(rules2)
plot(rules2, method = "two-key plot")
### changing the value of support and confidence###
rules3<-apriori(as.matrix(book),parameter = list(support=0.03,confidence=0.8))
inspect(rules3[1:90])
## visulaization###
plot(rules3)
plot(rules3, method = "two-key plot")
### changing the value of support and confidence###
rules4<-apriori(as.matrix(book),parameter = list(support=0.004,confidence=0.9))
inspect(rules4[1:50])
## visulaization###
plot(rules4)
plot(rules4, method = "two-key plot")
