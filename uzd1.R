library(exactRankTests)
dt1 <- read.csv("dt1.csv")

### 1 Uzduotis
wt1 <- wilcox.exact(dt1$before, dt1$after, alternative = "two.sided",
                   paired = TRUE) #Does not work with zero values
wt2 <- wilcox.test(dt1$before, dt1$after, alternative = "two.sided",
                   paired = TRUE)

### 2 Uzduotis
##???
n <- 10
x1 <- dt1$before
x2 <-dt1$after
x3 <- dt1$leadership
rx1 <- rank(x1)-5.5
rx2 <- rank(x2)-5.5
rx3 <- rank(x3)-5.5
sr1 <- sum(rx1*rx3)
sr2 <- sum(rx2*rx3)
sqrx1 <- sum(rx1^2)
sqrx2 <- sum(rx2^2)
sqrx3 <- sum(rx3^2)
rs1 <- sr1/sqrt(sqrx1*sqrx3)
rs2 <- sr2/sqrt(sqrx2*sqrx3)
t1 <- rs1*sqrt((n-2)/(1-rs1^2))
t2 <- rs2*sqrt((n-2)/(1-rs2^2))




cor.test(dt1$before, dt1$leadership, method = "spearman")


### 3 Uzduotis
chisq <- chisq.test(c(33, 51, 45), p = c(43/129, 43/129, 43/129))


### 4 Uzduotis
library(stats)
var <- function(x) {
  n <- length(x)
  sq <- sum((x - mean(x))^2)/(n - 1)
  return(sq)
}
y1 <- c(103, 111, 136, 106, 122, 114)
y2 <- c(92, 114, 86, 119, 131, 94)
y3 <- c(119, 100, 97, 89, 112, 86)

y <- c(y1, y2, y3)

n <- 18

group <- rep(1:3, each = 6)

tmp = tapply(y, group, stem)

stem(y)

tmpfn = function(x) c(sum = sum(x), mean = mean(x), var = var(x), n = length(x))
tapply(y, group, tmpfn)

tmpfn(y)

data = data.frame(y = y, group = factor(group))
fit = lm(y ~ group, data)
af <- anova(fit)

ssw <- af$'Sum Sq'[2]
ssb <- af$'Sum Sq'[1]
sst <- ssw + ssb
msw <- af$'Mean Sq'[2]
msb <- af$'Mean Sq'[1]

ff <- msb/msw

### Arba
kruskal.test(y ~ group)

### 5 Uzduotis

