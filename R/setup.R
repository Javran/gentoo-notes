# source code for fetching bioconductor libs

# also use the following line to include libs from bioconductor.
source("http://bioconductor.org/biocLite.R")

getPackageIfNeeded <- function(pkg) {
    if (!require(pkg, character.only=TRUE))
        biocLite(pkgs=pkg)
}

pkgs=c("affy","limma","annotate","hgu95av2.db","XML","reshape",
       "KEGG.db","GO.db","annaffy","genefilter","ggplot2","knitr")

sapply(pkgs,getPackageIfNeeded)
