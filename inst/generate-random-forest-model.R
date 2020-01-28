# This script generates the random forest model used in this package

mtcars_rf <- randomForest::randomForest(mpg ~ cyl + wt, data = mtcars)
# Warning about "partial argument match of 'along' to 'along.with'" here
# It doesn't seem to affect the results and this is just a toy example.
# Ignoring.

usethis::use_data(mtcars_rf, internal = TRUE, overwrite = TRUE)
