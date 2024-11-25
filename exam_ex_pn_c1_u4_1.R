# loading dataset
dat = mtcars
summary(dat)

# data normalization 
normalCars = scale(dat)

# clustering
distCars = dist(normalCars)

clusterCars = hclust(distCars, method="ward.D2")
plot(clusterCars)
rect.hclust(clusterCars,k=4)

# groups
groups <- cutree(clusterCars,  k=4)

View(table(mtcars$mpg, groups))
table(mtcars$hp, groups)
