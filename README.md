# Single cell RNA-seq clustering

Material for the SFN 2017 Neuroinformatics workshop.

## Getting started

1. Install [R](http://www.r-project.org/) and the free version of 
[RStudio](http://rstudio.org/download/).

2. Install the R package `Rtsne`.
    ```R
    install.packages("Rtsne")
    ```
   
3. Install the R package `Rphenograph`.
    ```R
    install.packages("devtools")
    devtools::install_github("JinmiaoChenLab/Rphenograph")
    ```

4. Clone or download this repository.

5. Open the project "RNAseq_cluster.Rproj" in R Studio.

6. Open the R Notebook "cluster_cells.Rmd" in the subfolder "R".

7. In the "Run Region" submenu of the "Code" menu, click "Run All".

8. R code "chunks" are contained within "```" marks. If you edit a chunk, 
click "Run Current Chunk" under the "Run Region" submenu to view revised output.
