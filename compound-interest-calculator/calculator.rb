# The output of the program should look as follows:

# What is the amount being invested: 1000
# What is the annual interest rate (percentage): 10
# How many years will it accrue interest: 25

# The final value will be $10834.71 after 25 years.

print "What is the amount being invested:\n"
pv = gets.chomp.to_f
print "What is the annual interest rate (percentage):\n"
i = gets.chomp.to_f / 100
print "How many years will it accrue interest:\n"
n = gets.chomp.to_f

fv = pv * (1 + i) ** n

printf("The final value will be is $%.2f after #{n.to_i} years.\n", fv)
