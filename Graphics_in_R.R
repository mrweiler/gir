##### Grafiken in R mit ggplot2

# ---- librarys laden
library(ggplot2)

# ---- Grundlagen
ggplot()
ggplot(data = mpg)
ggplot(data = mpg, aes(x = displ, y = hwy))
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()

# ---- und nochmal ...
ggplot()
ggplot(data = mpg)
ggplot(data = mpg, aes(x = manufacturer))
ggplot(data = mpg, aes(x = manufacturer)) + 
  geom_bar()

# Bitte erstellt mit den Variablen "cyl" 
# und "cty" aus dem "mpg"-Datensatz ein  
# Streudiagramm.



# ---- Histogramme
ggplot(data = mpg, aes(x = hwy)) + 
  geom_histogram()

# ---- Häufigkeitspolygone
ggplot(data = mpg, aes(x = hwy)) + 
  geom_freqpoly()

# ---- Densityplots
ggplot(data = mpg, aes(x = hwy)) + 
  geom_density()

# ---- Scatterplots
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()

# ---- Liniendiagramme
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_line()

# ---- Scatterplots
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_point()

# ---- Jitterplots
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_jitter()

# ---- Boxplots
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_boxplot()

# ---- Violinplots
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_violin()

# ---- Beeswarmplots
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  ggbeeswarm::geom_beeswarm()

# ---- Maps
ggplot(map_data("world"), aes(long, lat, group = group)) +
  geom_polygon() 


### Kombinationen
# Histogramm + Häufigkeitspolygon
ggplot(data = mpg, aes(x = hwy)) + 
  geom_histogram() +
  geom_freqpoly()

# Scatterplot + Regressiongrade + weitere 
# Regressiongrade mit Konfidenzinterval
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  geom_smooth(method = "loess", se = TRUE)

# Violinplot + Boxplot
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_violin() +
  geom_boxplot(width = 0.1)

# Bitte erstellt mit den Variablen "class"  
# und "cty" aus dem "mpg"-Datensatz ein  
# Streudiagramm und legt ein Liniendiagramm  
# darüber.


### Achsen anpassen

# Achsenlimits
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  scale_x_continuous(limits = c(0, 10))

# Achsenlimits (Alternative)
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  xlim(0, 10)

# Achsenlabels
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  labs(x = "Hubraum", y = "Kraftstoffeffizienz")

# Achsenlabels (Alternative)
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  xlab(label = "Hubraum") +
  ylab(label = "Kraftstoffeffizienz")

# Keine Achsenlabels
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  labs(x = "", y = "")

# Gar keine Achsenlabels
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  labs(x = NULL, y = NULL)

# Achsenskala
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  scale_x_continuous(limits = c(0, 10), breaks = c(0:10))

# Keine Achsenskala
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  scale_x_continuous(limits = c(0, 10), breaks = NULL)

### Weitere Beschriftungen

# Titel
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  ggtitle(label = "Mein Titel")

# Titel (Alternative)
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  labs(title = "Mein Titel")

# Legende
ggplot(data = mpg, aes(x = displ, y = hwy, color = class)) + 
  geom_point() +
  labs(color = "Meine Legende")

# Bitte erstellt eine leere Grafik mit  
# einem Titel und einem Untertitel.


### Themes

# Black-White
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  theme_bw()

# Classic
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  theme_classic()

# Leer
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  theme_void()

# Letzte Grafik mit hellblauem Hintergrund
last_plot() + 
  theme(panel.background = element_rect(fill = "lightblue"))

# ... mit schwarzen Achsen und Skala
last_plot() + 
  theme(axis.line = element_line(colour = "black"),
        axis.ticks = element_line(colour = "black"))

# ... mit Achsenbeschriftung
last_plot() + 
  theme(axis.text = element_text(colour = "blue"))

# Bitte erstellt die Grafik aus der Präsentation

### Dino
library(datasauRus)
library(dplyr)
dino <- datasaurus_dozen %>% filter(dataset == "dino")
ggplot(dino, aes(x = x, y = y)) +
  geom_point(color = "red") +
  theme_void()
