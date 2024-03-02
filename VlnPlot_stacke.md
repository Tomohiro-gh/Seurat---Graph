## Stacked VlnPlot


```r
library(Seurat)
library(dplyr)
library(ggplot2)
library("scales")
library(ggsci)
```

### 1 Normal version
```r
V1 <-
  VlnPlot(object = seurat_obj %>% 
            subset(subset = ClusterAnnotation == "Stromal cell"),
          features = Gene_list, 
          group.by = "Condition", 
          split.by = "Condition",
          split.plot = FALSE,
          stack = TRUE,
          flip = TRUE,
          pt.size = 0.1) + 
  labs(x = "") +
  scale_fill_aaas() + 
  NoLegend()
plot(V1)

```


### 2 Changing colors corresponding to seurat clustre colors
```r



```
