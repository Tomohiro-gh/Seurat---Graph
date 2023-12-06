## Seurat カラーを取得

library(Seurat)
library(scales)

## get length
Idents(seurat_obj) %>% unique() %>% length() #19


    show_col(hue_pal()(19))
# color をvectorへ入れる
myColors = hue_pal()(19)

Idents(seurat_obj) <- "CellAnnotation_Fine"


## stacked violin plot
## split.byに Identを入れておくといい
VlnPlot(object = seurat_obj, 
        features = MarkerGenes, 
        split.by = "CellAnnotation_Fine", 
        cols = myColors,
        stack = TRUE,
        flip = TRUE,
        pt.size = 0.1) + 
    labs(x = "") +
    myTHEME