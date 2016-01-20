people = [
    {first_name: "Jon", last_name: "Smith", age: 25, income: 50000, household_size: 1, gender: "Male", education: "College"},
    {first_name: "Jane", last_name: "Davies", age: 30, income: 60000, household_size: 3, gender: "Female", education: "High School"},
    {first_name: "Sam", last_name: "Farelly", age: 32, income: 80000, household_size: 2, gender: "Unspecified", education: "College"},
    {first_name: "Joan", last_name: "Favreau", age: 35, income: 65000, household_size: 4, gender: "Female", education: "College"},
    {first_name: "Sam", last_name: "McNulty", age: 38, income: 63000, household_size: 3, gender: "Male", education: "College"},
    {first_name: "Mark", last_name: "Minahan", age: 48, income: 78000, household_size: 1, gender: "Male", education: "High School"},
    {first_name: "Susan", last_name: "Umani", age: 45, income: 75000, household_size: 2, gender: "Female", education: "College"},
    {first_name: "Bill", last_name: "Perault", age: 24, income: 45000, household_size: 1, gender: "Male", education: "Did Not Complete High School"},
    {first_name: "Doug", last_name: "Stamper", age: 45, income: 75000, household_size: 1, gender: "Male", education: "college"},
    {first_name: "Francis", last_name: "Underwood", age: 52, income: 100000, household_size: 2, gender: "Male", education: "College"},
    ]

total_age = 0
total_income = 0
total_household_size = 0
female = 0
male = 0
unspecified = 0
college = 0
high_school = 0
did_not_finish_hs = 0

people.each do |person|
  total_age += person[:age]
  total_income += person[:income]
  total_household_size += person[:household_size]
  female += 1  if person[:gender] == "Female"
  male += 1  if person[:gender] == "Male"
  unspecified += 1  if person[:gender] == "Unspecified"
  college += 1  if person[:education] == "College"
  high_school += 1  if person[:education] == "High School"
  did_not_finish_hs += 1  if person[:education] == "Did Not Complete High School"
end

total_size = people.length

puts "Average Age: #{total_age/total_size.to_f}"
puts "Average Income: #{total_income/total_size.to_f}"
puts "Average Household Size: #{total_household_size/total_size.to_f}"
puts "Female %: #{female/total_size.to_f * 100}"
puts "Male %: #{male/total_size.to_f * 100}"
puts "Unspecified Gender %: #{unspecified/total_size.to_f * 100}"
puts "College %: #{college/total_size.to_f * 100}"
puts "High School %: #{high_school/total_size.to_f * 100}"
puts "Did Not Finish High School %: #{did_not_finish_hs/total_size.to_f * 100}"
