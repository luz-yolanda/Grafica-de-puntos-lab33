##############################################
#Hecho con gusto por Luz Yolanda Rivera Álvarez (UAEH)

#Laboratorio Gráficos en R Studio con ggplot2 para ciencia de datos
#Gráfica de puntos en R parte 1

#Instalar paquete con los datos
install.packages("gapminder")

#cargando paquete con los datos
library(gapminder)

#cargando datos a entorno
data("gapminder")

#filtrado por año 2007
gapminder2007<- gapminder[gapminder$year == "2007",]

#Echando un ojo a los datos
head (gapminder2007)

#cargar librería ggplot
library(ggplot2)

#cómo hacer gráfica de puntos con ggplot2
ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp)) +
  geom_point()

#probando diferentes colores
ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent)) +
  geom_point()

#Probando diferentees esteticas
ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent,
                     shape = continent,
                     size = pop)) +
  geom_point()

#Colocando texto dentro del gráfico
ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent,
                     shape = continent,
                     size = pop)) +
  geom_point()+
  geom_text(label = gapminder2007$country,
            color = "black" ,
            size = 3)
#Colocar líneas de regresión

ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent)) +
  geom_point()+
  geom_smooth(method = lm)

#Quitamos desviación estandar para hacerlo más estético

ggplot(data = gapminder2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp,
                     color = continent)) +
  geom_point()+
  geom_smooth(method = lm,
              se = FALSE,
              fullrange = TRUE)





