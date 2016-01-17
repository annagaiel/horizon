require 'pry'

answer = ""
while answer != "no" do
  puts "Can I get you anything?"
  answer = gets.chomp
  binding.pry
end
puts "Okay, bye!"
