1|...................................................................
(i)
data = c(2,5,7,10);data
sample.data = rbind(c(2,5), c(2,7), c(2,10), c(5,7), c(5,10), c(7,10));sample.data
population_mean = mean(data);population_mean
ybar = rowMeans(sample.data);ybar
exp_ybar = sum(ybar*(1/6));exp_ybar

(ii)

exp_ybar2 = sum((ybar^2)*(1/6));exp_ybar2
v_ybar = exp_ybar2 - (exp_ybar^2);v_ybar
N = length(data);N
n = 2;n
var = var(data);var
sigma2 = (var * (N - 1))/N;sigma2 
RHS = ((sigma2 * (N - n))/(n * (N - 1)));RHS
(iii)
s2 = (sample.data[,1] - ybar)^2 + (sample.data[,2] - ybar)^2;s2
exp_s2 = sum(s2 * (1/6));exp_s2
(iv)
alpha = 0.04;alpha
ztab = qnorm(alpha/2, mean = 0, sd = 1);ztab
LB = population_mean - abs(ztab)*sqrt(var/N);LB
UB = population_mean + abs(ztab)*sqrt(var/N);UB
population_total = population_mean * N;population_total
var_total = N^2 * sigma2;var_total
LB1 = population_total - abs(ztab)*sqrt(var_total/N);LB1
UB1 = population_total + abs(ztab)*sqrt(var_total/N);UB1

2|................................................

exp = rexp(200,1/50);exp
n = length(exp);n
xbar = sum(exp)/n;xbar
theta = 1/xbar; theta

alpha = 0.10;alpha
ztab = qnorm(1-(alpha/2));ztab
LB1 = theta - abs(ztab1)*(theta/sqrt(n));LB1
UB1 = theta + abs(ztab1)*(theta/sqrt(n));UB1


3|..................................................................

temp1 = c(32,34,31,33,35,36,34,34,34,35,32,33,33,33,32,32,34,33,32,34,32,31,33,34,35,34,33,33,33,34,34);temp1
temp2 = c(34,34,35,35,35,35,35,35,36,37,34,33,34,35,34,34,36,34,33,34,32,33,34,36,35,35,35,34,35,34,35);temp2
d = data.frame(temp1, temp2);d
getwd()
write.csv(d, 'C:/Users/G-11/Documents/problem3.csv')

alpha = 0.05;alpha
x1bar = mean(temp1);x1bar
x2bar = mean(temp2);x2bar
n1 = length(temp1);n1
n2 = length(temp2);n2
sd1 = sd(temp1);sd1
sd2 = sd(temp2);sd2
zstat = (x1bar - x2bar) / sqrt(sd1^2/n1 + sd2^2/n2);zstat
ztab = qnorm(alpha/2, mean=0, sd=1);ztab
if(abs(zstat) > abs(ztab)){
  print("Null hypothesis is rejected")
}else{
  print("Null hypothesis is accepted")
}


pvalue = 2 * pnorm(zstat);pvalue
if(pvalue < alpha){
  print("Null hypothesis is rejected")
}else{
  print("Null hypothesis is accepted")
}


boxplot(temp1,temp2,main="Box plot",xlab="Month",ylab="Temperature")
LCL=(x1bar-x1bar)-abs(ztab)*sqrt(sd1^2/n1+sd2^2/n2);LCL
UCL=(x2bar-x2bar)+abs(ztab)*sqrt(sd1^2/n1+sd2^2/n2);UC

4|..............................................................

a1 = 25;a1
n1 = 100;n1 
a2 = 18;a2
n2 = 125;n2 
alpha = 0.05;alpha
p1 = a1 / n1;p1
p2 = a2 / n2;p2
p = (a1 + a2) / (n1 + n2);p
q = (1 - p);q
zstat = (p1 - p2) / sqrt(p*q*(1/n1 + 1/n2));zstat
ztab = qnorm(alpha/2, mean=0, sd=1, lower.tail = FALSE);ztab
if(zstat > ztab){
  print("Null hypothesis is rejected")
}else{
  print("Null hypothesis is accepted")
}


pvalue = 2*pnorm(zstat);pvalue
if(pvalue < alpha){
  print("Null hypothes is rejected")
}else{
  print("Null hypothes is accepted")
}
