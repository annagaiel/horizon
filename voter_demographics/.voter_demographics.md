You're the new campaign manager for the Committee to Elect Mary Sue.
Mary needs to learn more about her constituency.
Given the sample size of data below, supply Mary with a report of:

* Average age
* Average income
* Average household size
* Female Percentage
* Male Percentage
* Unspecified Gender Percentage
* Percent of those who obtained a college education level
* Percent of those who obtained a high school education level
* Percent of those that did not finish high school

Here is the data:

```no-highlight
First Name, Last Name, Age, Income, Household Size, Gender, Education
Jon, Smith, 25, 50000, 1, Male, College
Jane, Davies, 30, 60000, 3, Female, High School
Sam, Farelly, 32, 80000, 2, Unspecified, College
Joan, Favreau, 35, 65000, 4, Female, College
Sam, McNulty, 38, 63000, 3, Male, College
Mark, Minahan, 48, 78000, 5, Male, High School
Susan, Umani, 45, 75000, 2, Female, College
Bill, Perault, 24, 45000, 1, Male, Did Not Complete High School
Doug, Stamper, 45, 75000, 1, Male, College
Francis, Underwood, 52, 100000, 2, Male, College
```

Sample Output:

```no-highlight
Average Age: 37.4
Average Income: 69100.0
Average Household Size: 2.4
Female %: 30.0
Male %: 60.0
Unspecified Gender %: 10.0
College %: 70.0
High School %: 20.0
Did Not Finish High School %: 10.0
```

{% show_hint %}
* Use an array of hashes and loop through the data to calculate values
{% endshow_hint %}

{% show_solution %}
```ruby
voters = [
  {
    first_name: 'Jon',
    last_name: 'Smith',
    age: 25,
    income: 50000,
    household_size: 1,
    gender: 'Male',
    education: 'College'
  },
  {
    first_name: 'Jane',
    last_name: 'Davies',
    age: 30,
    income: 60000,
    household_size: 3,
    gender: 'Female',
    education: 'High School'
  },
  {
    first_name: 'Sam',
    last_name: 'Farelly',
    age: 32,
    income: 80000,
    household_size: 2,
    gender: 'Unspecified',
    education: 'College'
  },
  {
    first_name: 'Joan',
    last_name: 'Favreau',
    age: 35,
    income: 65000,
    household_size: 4,
    gender: 'Female',
    education: 'College'
  },
  {
    first_name: 'Sam',
    last_name: 'McNulty',
    age: 38,
    income: 63000,
    household_size: 3,
    gender: 'Male',
    education: 'College'
  },
  {
    first_name: 'Mark',
    last_name: 'Minahan',
    age: 48,
    income: 78000,
    household_size: 5,
    gender: 'Male',
    education: 'High School'
  },
  {
    first_name: 'Susan',
    last_name: 'Umani',
    age: 45,
    income: 75000,
    household_size: 2,
    gender: 'Female',
    education: 'College'
  },
  {
    first_name: 'Bill',
    last_name: 'Perault',
    age: 24,
    income: 45000,
    household_size: 1,
    gender: 'Male',
    education: 'Did Not Complete High School'
  },
  {
    first_name: 'Doug',
    last_name: 'Stamper',
    age: 45,
    income: 75000,
    household_size: 1,
    gender: 'Male',
    education: 'College'
  },
  {
    first_name: 'Francis',
    last_name: 'Underwood',
    age: 52,
    income: 100000,
    household_size: 2,
    gender: 'Male',
    education: 'College'
  },
]

age_sum = 0
income_sum = 0
household_size_sum = 0
male_count = 0
female_count = 0
unspecified_gender_count = 0
college_count = 0
high_school_count = 0
no_high_school_count = 0

voters.each do |voter|
  age_sum += voter[:age]
  income_sum += voter[:income]
  household_size_sum += voter[:household_size]

  if voter[:gender] == 'Male'
    male_count += 1
  elsif voter[:gender] == 'Female'
    female_count += 1
  else
    unspecified_gender_count += 1
  end

  if voter[:education] == 'College'
    college_count += 1
  elsif voter[:education] == 'High School'
    high_school_count += 1
  else
    no_high_school_count += 1
  end
end

puts "Average Age: #{(age_sum / voters.size.to_f)}"
puts "Average Income: #{(income_sum / voters.size.to_f)}"
puts "Average Household Size: #{(household_size_sum / voters.size.to_f)}"

female_pct = (female_count / voters.size.to_f) * 100
puts "Female %: #{female_pct}"

male_pct = (male_count / voters.size.to_f) * 100
puts "Male %: #{male_pct}"

unspecified_gender_pct = (unspecified_gender_count / voters.size.to_f) * 100
puts "Unspecified Gender %: #{unspecified_gender_pct}"

puts "College %: #{(college_count / voters.size.to_f) * 100}"
puts "High School %: #{(high_school_count / voters.size.to_f) * 100}"
puts "Did Not Finish High School %: #{(no_high_school_count / voters.size.to_f) * 100}"

{% vimeo_video '128910139' %}
```
{% endshow_solution %}
