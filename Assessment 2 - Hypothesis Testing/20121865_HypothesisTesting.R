set.seed(20121865)
rnorm(1,10,2)
sqrt(rchisq(1,df=2))

mu = 10.32528
sd = 0.8096723

# Minimum value (3 standard deviations to the left of the mean)
minimum = mu - 3 * sd

# Maximum value (3 standard deviations to the right of the mean)
maximum = mu + 3 * sd

x <- seq(minimum, maximum, len = 100)

# Gaussian question 1
plot(x, dnorm(x, mu, sd),
     ylab = "Probability",
     xlab = "Range",
     main = "Probability Density Function")

# Gaussian question 2
pnorm(mu + 2 * sd, mu, sd) - pnorm(mu - sd, mu, sd)

# Gaussian question 3
r = rnorm(1e6, mu, sd)
hist(r,
     ylab = "Frequency",
     xlab = "Number",
     main = "Random")

# Gaussian question 4
# Theoretically, the mean would be the highest steepest point of the
# normal distribution, since the distribution is perfectly
# symmetrical, it would mean the middle of the distribution would
# be the steepest point of the curve which corresponds to the mean.

# Student t-test question 1
w <- c(102.5, 102.9, 99.9, 101.9, 101.3, 98.9, 96.5, 97.7, 101.8,
       100.3)

# A sensible null hypothesis would be H naught = the average
# weight of the bananas which is 100 grams.

# Student t-test question 2
n = length(w)
SEM = sd(w)/sqrt(n)
1 - pnorm(mean(w), 100, SEM)
# The p-value is defined as the likelihood of 
# receiving the observation or a more extreme observation 
# if the null hypothesis is true. The p-value that I got was 0.2910448,
# in this dataset, "more extreme"
# means larger than the observed sample mean.

# Student t-test question 3
# A one-sided test(right) is needed because of the fact that
# we are testing if the population mean is more than the null mean.

# Student t-test question 4
t.test(w,mu=100,alternative="greater")
# The t-test shows us that the p-value is 0.2977, which is different to
# the 0.2910448 that I got from calculating the p-value myself. This
# is because of the fact that the sample is too small which causes
# the uncertainty to be higher.

# Student t-test question 4
t.test(w,mu=100,conf.level=0.95,alt="g")
t.test(w,mu=100,conf.level=0.99,alt="g")
# The 95 percent confidence interval is 99.13757 and the
# 99 percent confidence interval is 98.4731.

# Hypothesis testing question 1
dbinom(1, 7, 0.4)

# Hypothesis testing question 2
1 - pbinom(2, 7, 0.4)

# Hypothesis testing question 3
# A null hypothesis would be that H0 = 5 since the scientists
# found a plant near a beehive to have 5 fertilized flowers.

# Hypothesis testing question 4
# The p-value is defined as the likelihood of 
# receiving the observation or a more extreme observation 
# if the null hypothesis is true.
# More extreme in this context means higher or lower than the
# sample mean.

# Hypothesis testing question 5
# I think a two-sided test is needed because it's not clear
# whether we can expect to see an increase or decrease in
# the actual observed mean.

# Hypothesis testing question 6
mu = 7*0.4
sigma = sqrt(7*0.4*(1 - 0.4))
SEM = sigma/sqrt(7)
1 - pnorm(mu, 5, SEM)
# Since the p-value that I got was 0.9994665, I don't think the p-value
# is significant because it's not low enough to reject the null hypothesis.

