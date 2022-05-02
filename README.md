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

| Available  |||| Process   | Allocation    ||||     Max      ||||
|---|---|---|---|-----------|-----|---|---|----|---|---|---|-----|
| A | B | C | D |           |   A | B | C | D  | A | B | C | D   |
| 1 | 5 | 2 | 0 | P0        |   0 | 0 | 1 | 2  | 0 | 0 | 1 | 2   |
|            |||| P1        |   1 | 0 | 0 | 0  | 1 | 7 | 5 | 0   |
|            |||| P2        |   1 | 3 | 5 | 4  | 2 | 3 | 5 | 6   |
|            |||| P3        |   0 | 6 | 3 | 2  | 0 | 6 | 5 | 2   |
|            |||| P4        |   0 | 0 | 1 | 4  | 0 | 6 | 5 | 6   |

 |  Old  X  | New  XIV |   
 | -------- | -------- |  
 |  10501   |  14104   |
 |  10502   |  14102   |
 |  10506   |  14103   |
 |  10507   |  14104   |
 |  10508   |  14105   |    
 |  10509   |  14106   |    
 |  10510   |  14107   |    
 |  10511   |  14108   |    
 |  10504   |  14201   |
 |  10503   |  14202   |    
 |  10505   |  14203   |    
 |  10512   |  14204   | 



INCOMPLETO


