
R version 2.13.0 (2011-04-13)
Copyright (C) 2011 The R Foundation for Statistical Computing
ISBN 3-900051-07-0
Platform: i386-pc-mingw32/i386 (32-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> options(chmhelp = FALSE, help_type = "text")
> .help.ESS <- help
> options(STERM='iESS', editor='gnuclient.exe')
> library(stats)
> chisq <- chisq.test(c(33, 51, 45), p = c(43/129, 43/129, 43/129))
> chisq

	Chi-squared test for given probabilities

data:  c(33, 51, 45) 
X-squared = 3.907, df = 2, p-value = 0.1418

> y1 <- c(103, 111, 136, 106, 122, 114)
> y2 <- c(92, 114, 86, 119, 131, 94)
> y3 <- c(119, 100, 97, 89, 112, 86)
> y <- c(y1, y2, y3)
> n <- 18
> group <- rep(1:3, each = 6)
> tmp = tapply(y, group, stem)

  The decimal point is 1 digit(s) to the right of the |

  10 | 36
  11 | 14
  12 | 2
  13 | 6


  The decimal point is 1 digit(s) to the right of the |

   8 | 6
   9 | 24
  10 | 
  11 | 49
  12 | 
  13 | 1


  The decimal point is 1 digit(s) to the right of the |

   8 | 69
   9 | 7
  10 | 0
  11 | 29

> stem(y)

  The decimal point is 1 digit(s) to the right of the |

   8 | 669247
  10 | 036124499
  12 | 216

> tmpfn = function(x) c(sum = sum(x), mean = mean(x), var = var(x), n = length(x))
> tapply(y, group, tmpfn)
$`1`
     sum     mean      var        n 
692.0000 115.3333 146.2667   6.0000 

$`2`
  sum  mean   var     n 
636.0 106.0 319.6   6.0 

$`3`
  sum  mean   var     n 
603.0 100.5 165.9   6.0 

> cor(y1,y1)
[1] 1
> ?rnorm
> x <- rnorm(10, mean = 0, sd = 11)
> var(x)
[1] 126.8869
> 11^2
[1] 121
> var <- function(x) {
+   n <- length(x)
+   sq <- sum(x - mean(x))/(n - 1)
+ }
> var(y1)
> y1 <- c(103, 111, 136, 106, 122, 114)
> y2 <- c(92, 114, 86, 119, 131, 94)
> y3 <- c(119, 100, 97, 89, 112, 86)
> var(y1)
> var
function(x) {
  n <- length(x)
  sq <- sum(x - mean(x))/(n - 1)
}
> var <- function(x) {
+   n <- length(x)
+   sq <- sum(x - mean(x))/(n - 1)
+   return(sq)
+ }
> var(y)
[1] 6.687461e-15
> var(y1)
[1] 5.684342e-15
> ?var
> n <- 18
> group <- rep(1:3, each = 6)
> tmp = tapply(y, group, stem)

  The decimal point is 1 digit(s) to the right of the |

  10 | 36
  11 | 14
  12 | 2
  13 | 6


  The decimal point is 1 digit(s) to the right of the |

   8 | 6
   9 | 24
  10 | 
  11 | 49
  12 | 
  13 | 1


  The decimal point is 1 digit(s) to the right of the |

   8 | 69
   9 | 7
  10 | 0
  11 | 29

> stem(y)

  The decimal point is 1 digit(s) to the right of the |

   8 | 669247
  10 | 036124499
  12 | 216

> tmpfn = function(x) c(sum = sum(x), mean = mean(x), var = var(x), n = length(x))
> tapply(y, group, tmpfn)
$`1`
         sum         mean          var            n 
6.920000e+02 1.153333e+02 5.684342e-15 6.000000e+00 

$`2`
 sum mean  var    n 
 636  106    0    6 

$`3`
  sum  mean   var     n 
603.0 100.5   0.0   6.0 

> chisq <- chisq.test(c(33, 51, 45), p = c(43/129, 43/129, 43/129))
> chisq

	Chi-squared test for given probabilities

data:  c(33, 51, 45) 
X-squared = 3.907, df = 2, p-value = 0.1418

> var(y2)
[1] 0
> mean(y2)
[1] 106
> sum(y2 - mean(y2))
[1] 0
> y2 - mean(y2)
[1] -14   8 -20  13  25 -12
> library(stats)
> var(y)
[1] 6.687461e-15
> var(y1)
[1] 5.684342e-15
> var <- function(x) {
+   var(x)
+ }
> var(y1)
Error: evaluation nested too deeply: infinite recursion / options(expressions=)?
> var <- function(x) {
+   stats:::var(x)
+ }
> var(y1)
[1] 146.2667
> x <- rnorm(10, mean = 0, sd = 11)
> var(x)
[1] 255.7969
> x <- rnorm(10, mean = 0, sd = 0.1)
> var(x)
[1] 0.01470892
> 0.1^2
[1] 0.01
> var <- function(x) {
+   n <- length(x)
+   sq <- sum((x - mean(x))^2)/(n - 1)
+   return(sq)
+ }
> tmpfn = function(x) c(sum = sum(x), mean = mean(x), var = var(x), n = length(x))
> tapply(y, group, tmpfn)
$`1`
     sum     mean      var        n 
692.0000 115.3333 146.2667   6.0000 

$`2`
  sum  mean   var     n 
636.0 106.0 319.6   6.0 

$`3`
  sum  mean   var     n 
603.0 100.5 165.9   6.0 

> stats:::var(y1)
[1] 146.2667
> stats:::var(y2)
[1] 319.6
> stats:::var(y3)
[1] 165.9
> tmpfn(y)
      sum      mean       var         n 
1931.0000  107.2778  225.5065   18.0000 
> data = data.frame(y = y, group = factor(group))
> fit = lm(y ~ group, data)
> anova(fit)
Analysis of Variance Table

Response: y
          Df  Sum Sq Mean Sq F value Pr(>F)
group      2  674.78  337.39  1.6021 0.2341
Residuals 15 3158.83  210.59               
> sum(y1)
[1] 692
> sum(y1^2)
[1] 80542
> sum(y2)
[1] 636
> sum(y2^2)
[1] 69014
> sum(y3)
[1] 603
> sum(y3^2)
[1] 61431
> 692+636+603
[1] 1931
> 80542+69014+61431
[1] 210987
> 1931^2
[1] 3728761
> 1931^2/18
[1] 207153.4
> 80542+69014+61431-1931^2/18
[1] 3833.611
> 692^2/6+636^2/6+603^2/6
[1] 207828.2
> 692^2/6+636^2/6+603^2/6-207153.4
[1] 674.7667
> 3833.61-674.7667
[1] 3158.843
> 3158.843/15
[1] 210.5895
> 674.7667/2
[1] 337.3834
> af <- anova(fit)
> names(af)
[1] "Df"      "Sum Sq"  "Mean Sq" "F value" "Pr(>F)" 
> af
Analysis of Variance Table

Response: y
          Df  Sum Sq Mean Sq F value Pr(>F)
group      2  674.78  337.39  1.6021 0.2341
Residuals 15 3158.83  210.59               
> ssw <- af$'Sum sq'
> ssw
NULL
> ssw <- af$'Sum Sq'
> ssw
[1]  674.7778 3158.8333
> ssw <- af$'Sum Sq'[2]
> ssb <- af$'Sum Sq'[1]
> msw <- af$'Mean Sq'[2]
> msb <- af$'Mean Sq'[1]
> ff <- msb/msw
> ff 
[1] 1.602121
> ?fisher.test
> ?fisher
> ?kruskal.test
> ?kruskal.test
> kruskal.test(y ~ group)

	Kruskal-Wallis rank sum test

data:  y by group 
Kruskal-Wallis chi-squared = 2.7835, df = 2, p-value = 0.2486

> ?kruskal.test
>      x <- c(2.9, 3.0, 2.5, 2.6, 3.2) # normal subjects
>      y <- c(3.8, 2.7, 4.0, 2.4)      # with obstructive airway disease
>      z <- c(2.8, 3.4, 3.7, 2.2, 2.0) # with asbestosis
>      kruskal.test(list(x, y, z))

	Kruskal-Wallis rank sum test

data:  list(x, y, z) 
Kruskal-Wallis chi-squared = 0.7714, df = 2, p-value = 0.68

>      x <- c(x, y, z)
>      g <- factor(rep(1:3, c(5, 4, 5)),
+                  labels = c("Normal subjects",
+                             "Subjects with obstructive airway disease",
+                             "Subjects with asbestosis"))
>      kruskal.test(x, g)

	Kruskal-Wallis rank sum test

data:  x and g 
Kruskal-Wallis chi-squared = 0.7714, df = 2, p-value = 0.68

>      require(graphics)
>      boxplot(Ozone ~ Month, data = airquality)
>      kruskal.test(Ozone ~ Month, data = airquality)

	Kruskal-Wallis rank sum test

data:  Ozone by Month 
Kruskal-Wallis chi-squared = 29.2666, df = 4, p-value = 6.901e-06

> ssb/sst
Error: object 'sst' not found
> sst <- ssw + ssb
> ssb/sst
[1] 0.1760162
> 7+8+9
[1] 24
> 7+8+9/3
[1] 18
> (7+8+9)/3
[1] 8
> (6+7+8)/3
[1] 7
> 4.5^2
[1] 20.25
> 2.5^2
[1] 6.25
> 3.5^2
[1] 12.25
> 1.5^2
[1] 2.25
> 1.5*4
[1] 6
> 4*3.5
[1] 14
> 2.5*1.5
[1] 3.75
> 20.25+16+6.25+16+4+6.25+4+6.25
[1] 79
> 12.5+20.25+2.25+1+12.25+6.25+2.25+20.25+2.25+1
[1] 80.25
> 20.25-6-2.5-14+5+3075+9+3075
[1] 6161.75
> 20.25-6-2.5-14+5+3.75+9+3.75
[1] 19.25
> sqrt(79^2*80.25^2)
[1] 6339.75
> 19.25/6339.75
[1] 0.003036397
> ?cor.test
> library(exactRankTests)
Loading required package: survival
Loading required package: splines
dt1 <- read.csv("dt1.csv")
 Package 'exactRankTests' is no longer under development.
 Please consider using package 'coin' instead.

Warning message:
package 'exactRankTests' was built under R version 2.13.1 
> > wt1 <- wilcox.exact(dt1$before, dt1$after, alternative = "two.sided",
+                    paired = TRUE) #Does not work with zero values
> wt2 <- wilcox.test(dt1$before, dt1$after, alternative = "two.sided",
+                    paired = TRUE)
Warning messages:
1: In wilcox.test.default(dt1$before, dt1$after, alternative = "two.sided",  :
  cannot compute exact p-value with ties
2: In wilcox.test.default(dt1$before, dt1$after, alternative = "two.sided",  :
  cannot compute exact p-value with zeroes
> dif <- dt1$before-dt1$after
> dif <- dif[dif!=0]
> wt2 <- wilcox.test(dif, extract = TRUE)
Warning message:
In wilcox.test.default(dif, extract = TRUE) :
  cannot compute exact p-value with ties
> names(dt1)
[1] "subject"    "before"     "after"      "leadership"
> cor.test(dt1$after, dt1$leadership, method = "spearman")

	Spearman's rank correlation rho

data:  dt1$after and dt1$leadership 
S = 66.932, p-value = 0.06998
alternative hypothesis: true rho is not equal to 0 
sample estimates:
      rho 
0.5943514 

Warning message:
In cor.test.default(dt1$after, dt1$leadership, method = "spearman") :
  Cannot compute exact p-values with ties
> ?spearman
> ?spearman.test
> x1 <- dt1$after
> x2 <- dt1$leadership
> x1
 [1] 7 9 5 8 5 6 8 6 8 7
> x2
 [1]  8 10  7  6  4  5  7  3  7  6
> rx1 <- rank(x1)
> rx1
 [1]  5.5 10.0  1.5  8.0  1.5  3.5  8.0  3.5  8.0  5.5
> rx2 <- rank(x2)
> rx2
 [1]  9.0 10.0  7.0  4.5  2.0  3.0  7.0  1.0  7.0  4.5
> rx1 <- rank(x1)-5.5
> rx2 <- rank(x2)-5.5
> rx1
 [1]  0.0  4.5 -4.0  2.5 -4.0 -2.0  2.5 -2.0  2.5  0.0
> rx2
 [1]  3.5  4.5  1.5 -1.0 -3.5 -2.5  1.5 -4.5  1.5 -1.0
> sr <- rx1*rx2
> sr
 [1]  0.00 20.25 -6.00 -2.50 14.00  5.00  3.75  9.00  3.75  0.00
> sr <- sum(rx1*rx2)
> sr
[1] 47.25
> rx1^2
 [1]  0.00 20.25 16.00  6.25 16.00  4.00  6.25  4.00  6.25  0.00
> sqrx2 <- sum(rx2^2)
> sqrx1 <- sum(rx1^2)
> sqrx1
[1] 79
> sqrx2
[1] 80
> rs <- sr/sqrt(sqrx1*sqrx2)
> rs
[1] 0.5943514
> sqrt(sqrx1*sqrx2)
[1] 79.49843
> cor.test(dt1$after, dt1$leadership, method = "spearman")

	Spearman's rank correlation rho

data:  dt1$after and dt1$leadership 
S = 66.932, p-value = 0.06998
alternative hypothesis: true rho is not equal to 0 
sample estimates:
      rho 
0.5943514 

Warning message:
In cor.test.default(dt1$after, dt1$leadership, method = "spearman") :
  Cannot compute exact p-values with ties
> 