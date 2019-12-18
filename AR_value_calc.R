#AR値計算スクリプト

install.packages("ROCR")
library(ROCR)
install.packages("openxlsx")
library(openxlsx)

filename="@@@"

roc_data <- read.xlsx(filename)
colnames(roc_data)

data_sco1 <- subset(roc_data,roc_data$ == 1 & roc_data$@@@@ == 2)

#降順に並び替えて、計算
pred <- prediction(data_sco1$@@@@,data_sco1$@@@@)

#
pref <- performance(pred,"tpr","fpr")

#プロット
plot(pref)

#aucの計算
auc.tmp <- performance(pred,"auc")
auc <- as.numeric(auc.tmp@y.values)

#ar値の計算
sprintf("%1.2f%%",(1 - 2*auc)*100)
