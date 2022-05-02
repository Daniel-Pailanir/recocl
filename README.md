# recocl
Modulo de Stata para recodificar las comunas de Chile. Las codificaciones que se consideran son:

Para instalar la versión antigua pueden tipear directamente en Stata:
```s
ssc install recocl, replace
```
o usando el comando ```github``` pueden instalar la versión más reciente en este repositorio:
```s
github install Daniel-Pailanir/recocl
```

+ Creación de la Región de Los Ríos en 2007
+ Creación de la Región de Arica y Parinacota en 2007
+ Creación de la Provincia de Marga Marga en 2010
+ Creación de la Región de Ñuble en 2017

## Ejemplo

Para aplicar todas las codificaciones de comunas hasta el año 2017, simplemente tipear:
```s
recocl codigo_comuna, gen(nuevo_codigo_comuna) year(2017) all
```

Lo que nos generará los siguientes cambios:

 |  Región de Los Ríos X 🠊 XIV |   
 | ---------------------------- |  
 |  10501    🠊  14104   |
 |  10502    🠊  14102   |
 |  10506    🠊  14103   |
 |  10507    🠊  14104   |
 |  10508    🠊  14105   |    
 |  10509    🠊  14106   |    
 |  10510    🠊  14107   |    
 |  10511    🠊  14108   |    
 |  10504    🠊  14201   |
 |  10503    🠊  14202   |    
 |  10505    🠊  14203   |    
 |  10512    🠊  14204   | 

 |  Región de Arica y Parinacota I 🠊 XV |   
 | ---------------------------- |  
 |   1201  🠊  15101   |
 |   1202  🠊  15102   |
 |   1301  🠊  15201   |
 |   1302  🠊  15202   | 

 |  Provincia de Marga Marga    |   
 | ---------------------------- |  
 |   5106  🠊  5801    |
 |   5505  🠊  5802    |
 |   5507  🠊  5803    |
 |   5108  🠊  5804    |     

 |  Región de Ñuble XIII XVI    |   
 | ---------------------------- | 
 |   8401  🠊  16101   |
 |   8402  🠊  16102   |
 |   8406  🠊  16103   |
 |   8407  🠊  16104   |    
 |   8410  🠊  16105   |    
 |   8411  🠊  16106   |    
 |   8413  🠊  16107   |    
 |   8418  🠊  16108   |    
 |   8421  🠊  16109   |    
 |   8414  🠊  16201   |    
 |   8403  🠊  16202   |    
 |   8404  🠊  16203   |
 |   8408  🠊  16204   |    
 |   8412  🠊  16205   |    
 |   8415  🠊  16206   |
 |   8420  🠊  16207   |    
 |   8416  🠊  16301   |    
 |   8405  🠊  16302   |
 |   8409  🠊  16303   |    
 |   8417  🠊  16304   |    
 |   8419  🠊  16305   |




