def average(*grades)
  grades.inject(:+)/grades.length.to_f
end

def letter_grade(average)
  case
    when average >= 90 then "A"
    when average >= 80 && average < 90 then "B"
    when average >= 70 && average < 80 then "C"
    when average >= 60 && average < 70 then "D"
    when average < 60 then "F"
  end
end

puts "Jane had the following grades: 98,95,88,97,74 for an average of #{average(98,95,88,97,74)}"
puts "Samantha had the following grades: 85,93,98,88,49 for an average of #{average(85,93,98,88,49)}"
puts "Matt had the following grades: 87,93,89,97,65 for an average of #{average(87,93,89,97,65)}"

puts "Jane's average letter grade is #{letter_grade(90.4)}."
puts "Samantha's average letter grade is #{letter_grade(82.6)}."
puts "Matt's average letter grade is #{letter_grade(86.2)}."
