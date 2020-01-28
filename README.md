
# ImportingRandomForest

<!-- badges: start -->
[![R build status](https://github.com/mdneuzerling/ImportingRandomForest/workflows/R-CMD-check/badge.svg)](https://github.com/mdneuzerling/ImportingRandomForest)
<!-- badges: end -->

This is a simple package to explore how to import an S3 generic to a package without importing an entire package's namespace. In this example I'm using the `randomForest` package, which has an (unexported) S3 generic `predict.randomForest`. I want to be able to use this method (through `stats::predict`) to score new data, without importing the whole `randomForest` namespace.

```
predict_mpg(cyl = 6, wt = 3.6)
# [1] 17.88909
```

## Installation

This package is not intended to be installed directly from GitHub. The following steps are required:

1. Install the `randomForest` package if it's not available.
1. Clone the repository to your machine.
1. Open the project in RStudio.
1. Run `devtools::check()`.
1. Install the package, if you wish.

The internal random forest model is generated by the script in the `inst` file.

