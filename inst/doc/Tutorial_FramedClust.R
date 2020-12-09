## ----  message=FALSE, warning=FALSE-------------------------------------------
library(OptCirClust)
X = rgamma(70, 6)
K = 7
frame.size = 50

## ----  message=FALSE, warning=FALSE-------------------------------------------
# Our recommended method is the fast and optimal linear.polylog:
result_linear.polylog <- FramedClust(X, K, frame.size,  method = "linear.polylog")

# The slow and optimal via repeatedly calling Ckmeans.1d.dp:
result_Ckmeans.1d.dp <- FramedClust(X, K, frame.size,  method = "Ckmeans.1d.dp")

# The slow and heuristic via repeatedly calling kmeans:
result_kmeans <- FramedClust(X, K, frame.size, method = "kmeans")

## ----  message=FALSE, warning=FALSE, fig.width = 5, fig.asp = .92-------------
plot(result_linear.polylog, main = "linear.polylog: optimal\n***Recommended***")

plot(result_Ckmeans.1d.dp, main = "Ckmeans.1d.dp: quadratic time")

plot(result_kmeans, main = "kmeans: heuristic\nnot always optimal")

