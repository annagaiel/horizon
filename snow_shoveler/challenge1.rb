## Challenge 1 - The Snow Shoveler

=begin

You have a snow shoveling business and decide to write a program to help
you build quotes for clients.

In order to test the your new program, the first quote you build will be for your
parents.  You charge clients by the cubic foot of snow.  The driveway at your house
is 8 ft wide and 20 ft long.  The last snowstorm dropped 8 inches of snow in total.

Here is your initial pricing chart:
0 - 50 cubic ft:  $20
50 - 150 cubic ft: $50
150 - 300 cubic ft: $100
300+ cubic ft: $150

Write a program that displays how many cubic ft of snow dropped
in a driveway and how much it will cost the clients for you to
clear out the snow.

Hints:
- cubic ft is measured: side X side X side
- when converting inches to ft make sure to use Floats

Example Ouput:

Cubic Feet: 106.66666666666666
Quote Price: $50

=end

############
# Solution #
############

width = 8.0 # feet
length = 20.0 # feet
height = 8.0 / 12.0 # inches converted to feet

cubic_feet = width * length * height

if cubic_feet < 50
  price = 20
elsif cubic_feet < 150
  price = 50
elsif cubic_feet < 300
  price = 100
else
  price = 150
end

puts "Cubic Feet: #{cubic_feet}"
puts "Quote Price: $#{price}"

## Screencast Outline ##

=begin

What is the question asking us to do?
- Figure out how to determine cubic feet
- Create variables for all the different information that is given
- Talk about assigning the price based on different conditions.  In order to
test the different conditions we need to compare the actual value to potential
values.  Starting with the most specific thing first and going up in broadness
- Different ways to display information onto the screen - concatenating strings
versus using string interpolation, explain what string interpolation is doing
behind the scenes (calling #to_s method)

=end
