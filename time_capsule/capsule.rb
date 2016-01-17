time_capsule = []
items = [
  "Comptometer",
  "Box of phonographic records",
  "plastic savings bank",
  "set of scales",
  "Toast-O-Lator",
  "sample of aluminum foil",
  "Donald Duck doll"
]
puts "Welcome to Time Capsule, what is your name?"
name = gets.chomp
puts "#{name.capitalize}, Here is a list of the AVAILABLE items in Time Capsule!:"
items.each { |item| puts "* " + item }
while true do
  puts "Enter an item or type (FINISHED) when done?"
  input = gets.chomp
  break if input.upcase == "FINISHED"
  if items.include? input
    puts "How many #{input} do you need"
    amount = gets.chomp
    time_capsule << [input, amount]
  else
    puts "#{input} is unavailable."
  end
end
puts "Gandalf, Here is a list of the items in your Time Capsule!:"
time_capsule.each { |item| puts "* " + item[0] + " (#{item[1]})" }
