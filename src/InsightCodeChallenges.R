Products <- read.csv(file = "Desktop/instacart_2017_05_01/products.csv", header = TRUE, sep = ",")
Order_products <- read.csv(file = "Desktop/instacart_2017_05_01/order_products__prior.csv", header = TRUE, sep = ",")

table(Products$department_id)



product1 <-  Products[which(Products$department_id  == 1), names(Products) %in% c("product_id")]
product2 <-  Products[which(Products$department_id  == 2), names(Products) %in% c("product_id")]
product3 <-  Products[which(Products$department_id  == 3), names(Products) %in% c("product_id")]
product4 <-  Products[which(Products$department_id  == 4), names(Products) %in% c("product_id")]
product5 <-  Products[which(Products$department_id  == 5), names(Products) %in% c("product_id")]
product6 <-  Products[which(Products$department_id  == 6), names(Products) %in% c("product_id")]
product7 <-  Products[which(Products$department_id  == 7), names(Products) %in% c("product_id")]
product8 <-  Products[which(Products$department_id  == 8), names(Products) %in% c("product_id")]
product9 <-  Products[which(Products$department_id  == 9), names(Products) %in% c("product_id")]
product10 <- Products[which(Products$department_id == 10), names(Products) %in% c("product_id")]
product11 <- Products[which(Products$department_id == 11), names(Products) %in% c("product_id")]
product12 <- Products[which(Products$department_id == 12), names(Products) %in% c("product_id")]
product13 <- Products[which(Products$department_id == 13), names(Products) %in% c("product_id")]
product14 <- Products[which(Products$department_id == 14), names(Products) %in% c("product_id")]
product15 <- Products[which(Products$department_id == 15), names(Products) %in% c("product_id")]
product16 <- Products[which(Products$department_id == 16), names(Products) %in% c("product_id")]
product17 <- Products[which(Products$department_id == 17), names(Products) %in% c("product_id")]
product18 <- Products[which(Products$department_id == 18), names(Products) %in% c("product_id")]
product19 <- Products[which(Products$department_id == 19), names(Products) %in% c("product_id")]
product20 <- Products[which(Products$department_id == 20), names(Products) %in% c("product_id")]
product21 <- Products[which(Products$department_id == 21), names(Products) %in% c("product_id")]

Order_products$product_id [2]

product1<-data.frame(product1)
names(product1) <- c("ids")
#---
product2<-data.frame(product2)
names(product2) <- c("ids")
#---
product3<-data.frame(product3)
names(product3) <- c("ids")
#---
product4<-data.frame(product4)
names(product4) <- c("ids")
#---
product5<-data.frame(product5)
names(product5) <- c("ids")
#---
product6<-data.frame(product6)
names(product6) <- c("ids")
#---
product7<-data.frame(product7)
names(product7) <- c("ids")
#---
product8<-data.frame(product8)
names(product8) <- c("ids")
#---
product9<-data.frame(product9)
names(product9) <- c("ids")
#---
product10<-data.frame(product10)
names(product10) <- c("ids")
#---
product11<-data.frame(product11)
names(product11) <- c("ids")
#---
product12<-data.frame(product12)
names(product12) <- c("ids")
#---
product13<-data.frame(product13)
names(product13) <- c("ids")
#---
product14<-data.frame(product14)
names(product14) <- c("ids")
#---
product15<-data.frame(product15)
names(product15) <- c("ids")
#---
product16<-data.frame(product16)
names(product16) <- c("ids")
#---
product17<-data.frame(product17)
names(product17) <- c("ids")
#---
product18<-data.frame(product18)
names(product18) <- c("ids")
#---
product19<-data.frame(product19)
names(product19) <- c("ids")
#---
product20<-data.frame(product20)
names(product20) <- c("ids")
#---
product21<-data.frame(product21)
names(product21) <- c("ids")


Dep1 <-0
Dep2 <-0
Dep3 <-0
Dep4 <-0
Dep5 <-0
Dep6 <-0
Dep7 <-0
Dep8 <-0
Dep9 <-0
Dep10 <-0
Dep11 <-0
Dep12 <-0
Dep13 <-0
Dep14 <-0
Dep15 <-0
Dep16 <-0
Dep17 <-0
Dep18 <-0
Dep19 <-0
Dep20 <-0
Dep21 <-0



#------------


#---Dep1
Dep1 = matrix(0,length(product1$ids),3)
for (i in 1:length(product1$ids)) {
 Dep1[i,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product1$ids[i] ),2])
 Dep1[i,2] <- length(Order_products [which(Order_products [ ,"product_id"] == product1$ids[i] &  Order_products[,"reordered"]==0) ,2])
 Dep1[i,3] <- Dep1[i,2]/Dep1[i,1]
}


#---Dep2

Dep2 = matrix(0,length(product2$ids),3)
for (j in 1:length(product2$ids)) {
 Dep2[j,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[j] ),2])
 Dep2[j,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[j] &  Order_products[,"reordered"]==0 ),2])
 Dep2[j,3] <- Dep2[j,2]/Dep2[j,1]
}

#---Dep3
Dep3 = matrix(0,length(product3$ids),3)
for (k in 1:length(product3$ids)) {
 Dep3[k,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product3$ids[k] ),2])
 Dep3[k,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[k] &  Order_products[,"reordered"]==0 ),2])
 Dep3[k,3] <- Dep3[k,2]/Dep3[k,1]
}

#---Dep4
Dep4 = matrix(0,length(product4$ids),3)
for (l in 1:length(product4$ids)) {
 Dep4[l,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product4$ids[l] ),2])
 Dep4[l,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[l] &  Order_products[,"reordered"]==0 ),2])
 Dep4[l,3] <- Dep4[l,2]/Dep4[l,1]
}

#---Dep5
Dep5 = matrix(0,length(product5$ids),3)
for (m in 1:length(product5$ids)) {
 Dep5[m,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product5$ids[m] ),2])
 Dep5[m,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[m] &  Order_products[,"reordered"]==0 ),2])
 Dep5[m,3] <- Dep5[m,2]/Dep5[m,1]
}

#---Dep6
Dep6 = matrix(0,length(product6$ids),3)
for (n in 1:length(product6$ids)) {
 Dep6[n,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product6$ids[n] ),2])
 Dep6[n,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[n] &  Order_products[,"reordered"]==0 ),2])
 Dep6[n,3] <- Dep6[n,2]/Dep6[n,1]
}

#---Dep7
Dep7 = matrix(0,length(product7$ids),3)
for (o in 1:length(product7$ids)) {
 Dep7[o,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product7$ids[o] ),2])
 Dep7[o,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[o] &  Order_products[,"reordered"]==0 ),2])
 Dep7[o,3] <- Dep7[o,2]/Dep7[o,1]
 
}

#---Dep8
Dep8 = matrix(0,length(product8$ids),3)
for (p in 1:length(product8$ids)) {
 Dep8[p,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product8$ids[p] ),2])
 Dep8[p,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[p] &  Order_products[,"reordered"]==0 ),2])
 Dep8[p,3] <- Dep8[p,2]/Dep8[p,1]
}

#---Dep9
Dep9 = matrix(0,length(product9$ids),3)
for (q in 1:length(product9$ids)) {
 Dep9[q,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product9$ids[q] ),2])
 Dep9[q,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[q] &  Order_products[,"reordered"]==0 ),2])
 Dep9[q,3] <- Dep9[q,2]/Dep9[q,1]
}

#---Dep10
Dep10 = matrix(0,length(product10$ids),3)
for (r in 1:length(product10$ids)) {
 Dep10[r,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product10$ids[r] ),2])
 Dep10[r,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[r] &  Order_products[,"reordered"]==0 ),2])
 Dep10[r,3] <- Dep10[r,2]/Dep10[r,1]
}

#---Dep11
Dep11 = matrix(0,length(product11$ids),3)
for (s in 1:length(product11$ids)) {
 Dep11[s,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product11$ids[s] ),2])
 Dep11[s,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[s] &  Order_products[,"reordered"]==0 ),2])
 Dep11[s,3] <- Dep11[s,2]/Dep11[s,1]
}

#---Dep12
Dep12 = matrix(0,length(product12$ids),3)
for (t in 1:length(product12$ids)) {
 Dep12[t,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product12$ids[t] ),2])
 Dep12[t,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[t] &  Order_products[,"reordered"]==0 ),2])
 Dep12[t,3] <- Dep12[t,2]/Dep12[t,1]
}

#---Dep13
Dep13 = matrix(0,length(product13$ids),3)
for (a in 1:length(product13$ids)) {
 Dep13[a,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product13$ids[a] ),2])
 Dep13[a,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[a] &  Order_products[,"reordered"]==0 ),2])
 Dep13[a,3] <- Dep13[a,2]/Dep13[a,1]
}

#---Dep14
Dep14 = matrix(0,length(product14$ids),3)
for (b in 1:length(product14$ids)) {
 Dep14[b,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product14$ids[b] ),2])
 Dep14[b,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[b] &  Order_products[,"reordered"]==0 ),2])
 Dep14[b,3] <- Dep14[b,2]/Dep14[b,1]
}
Dep15 = matrix(0,length(product15$ids),3)
#---Dep15
for (c in 1:length(product15$ids)) {
 Dep15[c,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product15$ids[c] ),2])
 Dep15[c,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[c] &  Order_products[,"reordered"]==0 ),2])
 Dep15[c,3] <- Dep15[c,2]/Dep15[c,1]
}

#---Dep16
Dep16 = matrix(0,length(product16$ids),3)
for (d in 1:length(product16$ids)) {
 Dep16[d,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product16$ids[d] ),2])
 Dep16[d,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[d] &  Order_products[,"reordered"]==0 ),2])
 Dep16[d,3] <- Dep16[d,2]/Dep16[d,1]
}

#---Dep17
Dep17 = matrix(0,length(product17$ids),3)
for (e in 1:length(product17$ids)) {
 Dep17[e,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product17$ids[e] ),2])
 Dep17[e,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[e] &  Order_products[,"reordered"]==0 ),2])
 Dep17[e,3] <- Dep17[e,2]/Dep17[e,1]
}

#---Dep18
Dep18 = matrix(0,length(product18$ids),3)
for (f in 1:length(product18$ids)) {
 Dep18[f,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product18$ids[f] ),2])
 Dep18[f,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[f] &  Order_products[,"reordered"]==0 ),2])
 Dep18[f,3] <- Dep18[f,2]/Dep18[f,1]
}

#---Dep19
Dep19 = matrix(0,length(product19$ids),3)
for (g in 1:length(product19$ids)) {
 Dep19[g,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product19$ids[g] ),2])
 Dep19[g,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[g] &  Order_products[,"reordered"]==0 ),2])
 Dep19[g,3] <- Dep19[g,2]/Dep19[g,1]
}

#---Dep20
Dep20 = matrix(0,length(product20$ids),3)
for (h in 1:length(product20$ids)) {
 Dep20[h,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product20$ids[h] ),2])
 Dep20[h,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[h] &  Order_products[,"reordered"]==0 ),2])
 Dep20[h,3] <- Dep20[h,2]/Dep20[h,1]
}

#---Dep21
Dep21 = matrix(0,length(product21$ids),3)
for (z in 1:length(product21$ids)) {
 Dep21[z,1]  <-length (Order_products [which(Order_products [ ,"product_id"] == product21$ids[z] ),2])
 Dep21[z,2]  <-length (Order_products [which(Order_products [ ,"product_id"] == product2$ids[z] &  Order_products[,"reordered"]==0 ),2])
 Dep21[z,3] <- Dep21[z,2]/Dep21[z,1]
}

#-------------
Department1 = matrix(1,length(product1$ids),1)
Department2 = matrix(2,length(product2$ids),1)
Department3 = matrix(3,length(product3$ids),1)
Department4 = matrix(4,length(product4$ids),1)
Department5 = matrix(5,length(product5$ids),1)
Department6 = matrix(6,length(product6$ids),1)
Department7 = matrix(7,length(product7$ids),1)
Department8 = matrix(8,length(product8$ids),1)
Department9 = matrix(9,length(product9$ids),1)
Department10 = matrix(10,length(product10$ids),1)
Department11 = matrix(11,length(product11$ids),1)
Department12 = matrix(12,length(product12$ids),1)
Department13 = matrix(13,length(product13$ids),1)
Department14 = matrix(14,length(product14$ids),1)
Department15 = matrix(15,length(product15$ids),1)
Department16 = matrix(16,length(product16$ids),1)
Department17 = matrix(17,length(product17$ids),1)
Department18 = matrix(18,length(product18$ids),1)
Department19 = matrix(19,length(product19$ids),1)
Department20 = matrix(20,length(product20$ids),1)
Department21 = matrix(21,length(product21$ids),1)

#----------------
Department1 <-  cbind (Department1, Dep1)
Department2 <-  cbind (Department2, Dep2)
Department3 <-  cbind (Department3, Dep3)
Department4 <-  cbind (Department4, Dep4)
Department5 <-  cbind (Department5, Dep5)
Department6 <-  cbind (Department6, Dep6)
Department7 <-  cbind (Department7, Dep7)
Department8 <-  cbind (Department8, Dep8)
Department9 <-  cbind (Department9, Dep9)
Department10 <- cbind (Department10, Dep10)
Department11 <- cbind (Department11, Dep11)
Department12 <- cbind (Department12, Dep12)
Department13 <- cbind (Department13, Dep13)
Department14 <- cbind (Department14, Dep14)
Department15 <- cbind (Department15, Dep15)
Department16 <- cbind (Department16, Dep16)
Department17 <- cbind (Department17, Dep17)
Department18 <- cbind (Department18, Dep18)
Department19 <- cbind (Department19, Dep19)
Department20 <- cbind (Department20, Dep20)
Department21 <- cbind (Department21, Dep21)

FinalResult <- rbind(Department1,Department2,Department3,Department4,Department5,
                     Department6,Department7,Department8,Department9,Department10,
                     Department11,Department12,Department13,Department14,
                     Department15,Department16,Department17,Department18,Department19,
                     Department20,Department21)

FinalResult <- data.frame(FinalResult)
FinalResult$percentage <- round(FinalResult$percentage,2)
test <- round(FinalResult)
names(FinalResult) <- c("department_id","number_of_orders", "number_of_first_orders","percentage")
write.csv(FinalResult, file = "FinalReport.csv")
