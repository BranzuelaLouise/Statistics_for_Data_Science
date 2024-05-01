# Question 1
M <- matrix(c(10,2,11,7),2,2)
dimnames(M) <- list(OS=c("windows","mac"),major=c("science","arts"))
M

# A sensible null hypothesis would be that the OS that a student uses
# is independent of their course choices. Therefore the null hypothesis is 
# H0: (Mac|Art) = (Mac|Science). P-value is a probability that's
# calculated under the assumption that the null hypothesis is true.

#"More extreme" in this case means
# larger than the observed sample mean. 

fisher.test(M, alternative="greater")

# Since the p-value is 0.1869, we fail to reject the null hypothesis
# because of the fact that the p-value is greater than 0.05.

# Question 2
N <- matrix(c(5,4,2,9),2,2)
dimnames(N) <- list(
  given=c("vitamin C","placebo"),state=c("cured","cold")
)

# A sensible null hypothesis would be that Vitamin C does not help
# in curing the common cold.

# The p-value is a probability that's calculated under the assumption that
# the null hypothesis is true. In this case, "more extreme" means larger
# than the sample mean. If the p-value is significantly less than the sample mean,
# then that means it is in favour of the alternative hypothesis.

# A one-sided test(right) is needed because of the fact that
# we are testing if the population mean is more than the null mean.

# The probability of a person who was given vitamin C and being cured:
# P(Cured|Vitamin C) = P(Cured and Vitamin C) / P(Vitamin C)
5/7

# The probability of a person who was given the placebo and being cured:
# P(Cured|Placebo) = P(Cured and Placebo) / P(Placebo)
4/13

fisher.test(N, alternative="greater")

# Since the p-value of the matrix is 0.1018, we fail to reject
# the null hypothesis because of the fact that the p-value is
# greater than 0.05.

# Question 3
dhyper(3, 3, 5, 4) # 3 white and 1 black
dhyper(2, 3, 5, 4) # 2 white and 2 black
dhyper(1, 3, 5, 4) # 1 white and 3 black
dhyper(0, 3, 5, 4) # 0 white and 4 black
sum(dhyper(0:3, 3, 5, 4)) # Checking that everything sums to 1

# Question 4
# Fisher's exact test refers to the evaluation of non-random
# relationships between two sets of data. In this data,
# Fisher's test was used to carry out the frequency data for the results
# of the three AUT students and four UoA students to estimate non-randomness.

fisher.test(diag(3:4))

# Since the p-value from the data is 0.02857, we reject the null
# hypothesis which means that the test results from the university students
# were not random.

# Question 5

