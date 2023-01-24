
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }


# create a string of package names
packages <- c('tidyverse',
              'palmerpenguins',
              'sf',
              'terra',
              'tmap',
              'rmarkdown',
              'tigris',
              'elevatr',
              'rgdal',
              'showtext',
)

packageLoad(packages)


#showtext_auto()  # Fixes font issues on Linux)


# call this script in future assignments using `source("PATH_TO_THIS_SCRIPT")`
