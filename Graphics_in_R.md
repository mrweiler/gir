Grafiken in R mit ggplot2
========================================================
author: Matthias Weiler
date: 13.02.2018
autosize: true
transition: concave

Folien und Datensatz
========================================================

https://mrweiler.github.io/gir  
https://github.com/mrweiler/gir/blob/master/Graphics_in_R.R

Grundlagen
========================================================
type: section

Grafiken mit ggplot()
========================================================
Drei Kernkomponenten:
- Data
- Aesthetic mappings
- Geometric objects

ggplot()
========================================================



```r
ggplot()
```

![plot of chunk unnamed-chunk-2](Graphics_in_R-figure/unnamed-chunk-2-1.png)

+ data
========================================================

```r
ggplot(data = mpg)
```

![plot of chunk unnamed-chunk-3](Graphics_in_R-figure/unnamed-chunk-3-1.png)

+ aesthetic mappings
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy))
```

![plot of chunk unnamed-chunk-4](Graphics_in_R-figure/unnamed-chunk-4-1.png)

+ geometric objects
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()
```

![plot of chunk unnamed-chunk-5](Graphics_in_R-figure/unnamed-chunk-5-1.png)

und nochmal ...
========================================================

ggplot()
========================================================



```r
ggplot()
```

![plot of chunk unnamed-chunk-7](Graphics_in_R-figure/unnamed-chunk-7-1.png)

+ data
========================================================

```r
ggplot(data = mpg)
```

![plot of chunk unnamed-chunk-8](Graphics_in_R-figure/unnamed-chunk-8-1.png)

+ aesthetic mappings
========================================================

```r
ggplot(data = mpg, aes(x = manufacturer))
```

![plot of chunk unnamed-chunk-9](Graphics_in_R-figure/unnamed-chunk-9-1.png)

+ geometric objects
========================================================

```r
ggplot(data = mpg, aes(x = manufacturer)) + 
  geom_bar()
```

![plot of chunk unnamed-chunk-10](Graphics_in_R-figure/unnamed-chunk-10-1.png)

Und jetzt seid Ihr dran!
========================================================
Bitte erstellt mit den Variablen "cyl"  
und "cty" aus dem "mpg"-Datensatz ein  
Streudiagramm.

Auflösung
========================================================

```r
ggplot(data = mpg, aes(x = cyl, y = cty)) + 
  geom_point()
```

![plot of chunk unnamed-chunk-11](Graphics_in_R-figure/unnamed-chunk-11-1.png)

Weitere "geometric objects"
========================================================
type: section

Histogramme
========================================================

```r
ggplot(data = mpg, aes(x = hwy)) + 
  geom_histogram()
```

![plot of chunk unnamed-chunk-12](Graphics_in_R-figure/unnamed-chunk-12-1.png)

Häufigkeitspolygone
========================================================

```r
ggplot(data = mpg, aes(x = hwy)) + 
  geom_freqpoly()
```

![plot of chunk unnamed-chunk-13](Graphics_in_R-figure/unnamed-chunk-13-1.png)

Densityplots
========================================================

```r
ggplot(data = mpg, aes(x = hwy)) + 
  geom_density()
```

![plot of chunk unnamed-chunk-14](Graphics_in_R-figure/unnamed-chunk-14-1.png)

Scatterplots
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()
```

![plot of chunk unnamed-chunk-15](Graphics_in_R-figure/unnamed-chunk-15-1.png)

Liniendiagramme
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_line()
```

![plot of chunk unnamed-chunk-16](Graphics_in_R-figure/unnamed-chunk-16-1.png)

Scatterplots
========================================================

```r
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_point()
```

![plot of chunk unnamed-chunk-17](Graphics_in_R-figure/unnamed-chunk-17-1.png)

Jitterplots
========================================================

```r
set.seed(123)
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_jitter()
```

![plot of chunk unnamed-chunk-18](Graphics_in_R-figure/unnamed-chunk-18-1.png)

Boxplots
========================================================

```r
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_boxplot()
```

![plot of chunk unnamed-chunk-19](Graphics_in_R-figure/unnamed-chunk-19-1.png)

Violinplots
========================================================

```r
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_violin()
```

![plot of chunk unnamed-chunk-20](Graphics_in_R-figure/unnamed-chunk-20-1.png)

Beeswarmplots
========================================================

```r
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  ggbeeswarm::geom_beeswarm()
```

![plot of chunk unnamed-chunk-21](Graphics_in_R-figure/unnamed-chunk-21-1.png)

Maps
========================================================

```r
ggplot(map_data("world"), aes(long, lat, group = group)) +
  geom_polygon() 
```

![plot of chunk unnamed-chunk-22](Graphics_in_R-figure/unnamed-chunk-22-1.png)

Kombinationen
========================================================
type: section

Histogramm
========================================================

```r
ggplot(data = mpg, aes(x = hwy)) + 
  geom_histogram()
```

![plot of chunk unnamed-chunk-23](Graphics_in_R-figure/unnamed-chunk-23-1.png)

+ Häufigkeitspolygon
========================================================

```r
ggplot(data = mpg, aes(x = hwy)) + 
  geom_histogram() +
  geom_freqpoly()
```

![plot of chunk unnamed-chunk-24](Graphics_in_R-figure/unnamed-chunk-24-1.png)

Scatterplot
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()
```

![plot of chunk unnamed-chunk-25](Graphics_in_R-figure/unnamed-chunk-25-1.png)

+ Regressiongrade
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)
```

![plot of chunk unnamed-chunk-26](Graphics_in_R-figure/unnamed-chunk-26-1.png)

+ weitere Regressiongrade mit Konfidenzinterval
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  geom_smooth(method = "loess", se = TRUE)
```

![plot of chunk unnamed-chunk-27](Graphics_in_R-figure/unnamed-chunk-27-1.png)

Violinplot
========================================================

```r
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_violin()
```

![plot of chunk unnamed-chunk-28](Graphics_in_R-figure/unnamed-chunk-28-1.png)

+ Boxplot
========================================================

```r
ggplot(data = mpg, aes(x = drv, y = hwy)) + 
  geom_violin() +
  geom_boxplot(width = 0.1)
```

![plot of chunk unnamed-chunk-29](Graphics_in_R-figure/unnamed-chunk-29-1.png)

Und jetzt seid Ihr dran!
========================================================
Bitte erstellt mit den Variablen "class"  
und "cty" aus dem "mpg"-Datensatz ein  
Streudiagramm und legt ein Liniendiagramm  
darüber.

Auflösung
========================================================

```r
ggplot(data = mpg, aes(x = class, y = hwy)) + 
  geom_point() +
  geom_line()
```

![plot of chunk unnamed-chunk-30](Graphics_in_R-figure/unnamed-chunk-30-1.png)

Achsen anpassen
========================================================
type: section

Achsenlimits
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  scale_x_continuous(limits = c(0, 10))
```

![plot of chunk unnamed-chunk-31](Graphics_in_R-figure/unnamed-chunk-31-1.png)

Achsenlimits (Alternative)
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  xlim(0, 10)
```

![plot of chunk unnamed-chunk-32](Graphics_in_R-figure/unnamed-chunk-32-1.png)

Achsenlabels
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  labs(x = "Hubraum", y = "Kraftstoffeffizienz")
```

![plot of chunk unnamed-chunk-33](Graphics_in_R-figure/unnamed-chunk-33-1.png)

Achsenlabels (Alternative)
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  xlab(label = "Hubraum") +
  ylab(label = "Kraftstoffeffizienz")
```

![plot of chunk unnamed-chunk-34](Graphics_in_R-figure/unnamed-chunk-34-1.png)

Keine Achsenlabels
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  labs(x = "", y = "")
```

![plot of chunk unnamed-chunk-35](Graphics_in_R-figure/unnamed-chunk-35-1.png)

Gar keine Achsenlabels
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  labs(x = NULL, y = NULL)
```

![plot of chunk unnamed-chunk-36](Graphics_in_R-figure/unnamed-chunk-36-1.png)

Achsenskala
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  scale_x_continuous(limits = c(0, 10), breaks = c(0:10))
```

![plot of chunk unnamed-chunk-37](Graphics_in_R-figure/unnamed-chunk-37-1.png)

Keine Achsenskala
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  scale_x_continuous(limits = c(0, 10), breaks = NULL)
```

![plot of chunk unnamed-chunk-38](Graphics_in_R-figure/unnamed-chunk-38-1.png)

Weitere Beschriftungen
========================================================
type: section

Titel
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  ggtitle(label = "Mein Titel")
```

![plot of chunk unnamed-chunk-39](Graphics_in_R-figure/unnamed-chunk-39-1.png)

Titel (Alternative)
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  labs(title = "Mein Titel")
```

![plot of chunk unnamed-chunk-40](Graphics_in_R-figure/unnamed-chunk-40-1.png)

Legende
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy, color = class)) + 
  geom_point() +
  labs(color = "Meine Legende")
```

![plot of chunk unnamed-chunk-41](Graphics_in_R-figure/unnamed-chunk-41-1.png)

Und jetzt seid Ihr dran!
========================================================
Bitte erstellt eine leere Grafik mit  
einem Titel und einem Untertitel.

Auflösung
========================================================

```r
ggplot() + 
  labs(title = "Mein Titel", subtitle = "Mein Untertitle")
```

![plot of chunk unnamed-chunk-42](Graphics_in_R-figure/unnamed-chunk-42-1.png)

Themes
========================================================
type: section

Black-White
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  theme_bw()
```

![plot of chunk unnamed-chunk-43](Graphics_in_R-figure/unnamed-chunk-43-1.png)

Classic
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  theme_classic()
```

![plot of chunk unnamed-chunk-44](Graphics_in_R-figure/unnamed-chunk-44-1.png)

Leer
========================================================

```r
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() +
  theme_void()
```

![plot of chunk unnamed-chunk-45](Graphics_in_R-figure/unnamed-chunk-45-1.png)

Letzte Grafik mit hellblauem Hintergrund
========================================================

```r
last_plot() + 
  theme(panel.background = element_rect(fill = "lightblue"))
```

![plot of chunk unnamed-chunk-46](Graphics_in_R-figure/unnamed-chunk-46-1.png)

... mit schwarzen Achsen und Skala
========================================================

```r
last_plot() + 
  theme(axis.line = element_line(colour = "black"),
        axis.ticks = element_line(colour = "black"))
```

![plot of chunk unnamed-chunk-47](Graphics_in_R-figure/unnamed-chunk-47-1.png)

... mit Achsenbeschriftung
========================================================

```r
last_plot() + 
  theme(axis.text = element_text(colour = "blue"))
```

![plot of chunk unnamed-chunk-48](Graphics_in_R-figure/unnamed-chunk-48-1.png)

Und jetzt seid Ihr dran!
========================================================
Bitte erstellt folgende Grafik:  
![plot of chunk unnamed-chunk-49](Graphics_in_R-figure/unnamed-chunk-49-1.png)

Auflösung
========================================================

```r
ggplot() + 
  ggtitle(label = "Fast", subtitle = "fertig") +
  theme(title = element_text(colour = "white", face = "bold", size = 50), 
        panel.background = element_rect(fill = "yellow"),
        plot.background = element_rect(fill = "blue"))
```

Noch Fragen?
========================================================

Literatur
========================================================
Wickham, H. (2016). ggplot2: Elegant Graphics for Data Analysis. Springer.

Fertig
========================================================
![plot of chunk unnamed-chunk-51](Graphics_in_R-figure/unnamed-chunk-51-1.png)
