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


