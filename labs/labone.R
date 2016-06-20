# Yunshan Guo
scored <- c(14, 14, 9, 14, 28, 13, 13, 24, 17, 6, 24, 0, 24, 13, 26, 14)
against <- c(19, 30, 16, 38, 31, 24, 23, 30, 41, 13, 20, 52, 13, 31, 24, 47)
# Part One
# How many points did the Raiders score in game 7? 
scored[7] # 13
# What was the score of the first 5 games?
scored[1:5] # 14 14 9 14 28
# What were the scores of the even games? Try to do this problem without typing in c(2,4,…)
scored[seq(2,length(scored),2)] # 14 14 13 24  6  0 13 14
# What was the score of the last game? Try to do this problem without typing in the number of the last game.
scored[length(scored)] # 14
# Select the scores higher than 14.
scored [scored > 14 ] # 28 24 17 24 24 26
# Select the scores equal to 14.
scored [scored ==14]
# Select the scores equal to 13 or 14.
scored [scored==13 | scored == 14]
# Select the scores between between 7 and 21 points.
scored [scored > 7 & scored < 21] # 14 14  9 14 13 13 17 13 14
# Sort the scores in decreasing order.
sort(scored, decreasing = TRUE) #  28 26 24 24 24 17 14 14 14 14 13 13 13  9  6  0
# What was the highest score achieved?
max(scored) # 28
# What was the lowest score achieved?
min(scored) # 0 
# What was the average score?
mean(scored) # 15.8125
# Use the summary() function to give some summary statistics
summary(scored)
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#  0.00   13.00   14.00   15.81   24.00   28.00 
# In how many games did the Raiders score over 20 points?
length(scored[scored>20]) # 5

# Part Two
# What was the sum of the scores in game 7?
scored[7]+against[7] # 36
# What was the sum of the scores in the last 5 games?
l=length(scored) # 16
scored[(l-4):l]+against[(l-4):l] # 52 37 44 50 61
# What was the difference in scores in the odd games?
scored[seq(1,length(scored),2)] - against[seq(1,length(against),2)] 
# -5  -7  -3 -10 -24   4  11   2
# Which games did the Raiders win?
dif = scored-against
which(dif>0) # game 11,13,15
# Were there any ties?
which(dif==0) # No

