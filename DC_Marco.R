#DC_Marco
apply(variables_num,2,lillie.test) #Ninguna de las tres variables numéricas sigue una distribución normal
colnames(variables_num)

df$Assessed.Value[df$Assessed.Value<quantile(df$Assessed.Value,0.0009 ,na.rm=TRUE)] #no hay
df$Assessed.Value[df$Assessed.Value>quantile(df$Assessed.Value,0.99999,na.rm=TRUE)]
#114924210 122935400 122935400 110670208 138958820 138958820 138958820 131072830 881510000 105438300 142858700: son outliers

df$Sale.Amount[df$Sale.Amount<quantile(df$Sale.Amount,0.0009,na.rm=TRUE)] #no hay
df$Sale.Amount[df$Sale.Amount>quantile(df$Sale.Amount,0.99999,na.rm=TRUE)]
#5000000000  318790019  395500000  395500000  395500000  395500000  395500000  395500000  395500000  395500000  395500000: son outliers

df$Sales.Ratio[df$Sales.Ratio<quantile(df$Sales.Ratio,0.0009,na.rm=TRUE)] #no hay
df$Sales.Ratio[df$Sales.Ratio>quantile(df$Sales.Ratio,0.99999,na.rm=TRUE)]
#594000  519130  224940  368680  611900  196980 1226420  198960  473780  305910  241910: son outliers

#Sustituye los outliers por NA-s
df$Assessed.Value[df$Assessed.Value>quantile(df$Assessed.Value,0.99999,na.rm=TRUE)]<-NA
df$Sale.Amount[df$Sale.Amount>quantile(df$Sale.Amount,0.99999,na.rm=TRUE)]<-NA
df$Sales.Ratio[df$Sales.Ratio>quantile(df$Sales.Ratio,0.99999,na.rm=TRUE)]<-NA
