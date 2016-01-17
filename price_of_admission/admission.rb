=begin
Given:
(4) adults and two (2) children
=end
adults_price = 12.80
children_price = 4.00

sum = (adults_price * 4) + (children_price * 2)
printf("The sum price for (4) adults and two (2) children is $%.2f\n", sum)
split_evenly = sum / 4
printf("Each four adults will pay $%.2f\n", split_evenly)
