def disclaimer
  %Q(
  ***DISCLAIMER***
  This code may not work the way you expect it to.
  By using this temperamental program, you agree not to
  sue the pants off of its creator.
  ***
  )
end

has_accepted = 'n'
until has_accepted == 'y' do
  puts disclaimer
  puts "You must accept our disclaimer to proceed! Do you accept? (y/n)"
  has_accepted = gets.chomp
end

puts "3 + 2 = #{rand(6)}"
