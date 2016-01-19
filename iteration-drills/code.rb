array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

puts 'What is the sum of all the numbers in array?'
puts array.reduce(:+)
puts 'How would you print out each value of the array?'
puts array.each {|value| puts value}
puts 'What is the sum of all of the even numbers?'
even_array = array.select{|number| number % 2 == 0}
puts even_array.reduce(:+)
puts 'What is the sum of all of the odd numbers?'
odd_array = array.select{ |number| number.odd?}
puts odd_array.reduce(:+)
puts 'What is the sum of all the numbers divisible by 5?'
five_divisible_array = array.select{|number| number % 5 == 0}
puts five_divisible_array.reduce(:+)
puts 'What is the sum of the squares of all the numbers in the array?'
squared_array = array.map {|num| num ** 2}
puts squared_array.reduce(:+)

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

puts 'How would you print out each name backwards in array?'
puts array.map{|name| name.reverse}
puts 'What are the total number of characters in the names in array?'
total_char = 0
array.each{|name| total_char += name.length}
puts total_char
puts 'How many names in array are less than 5 characters long?'
puts array.select{|name| name.length < 5}.length
puts 'How many names in array end in a vowel?'
puts array.select{|name| name.end_with?('a','e','i','o','u') }.length
puts 'How many names in array are more than 5 characters long?'
puts array.select{|name| name.length > 5}.length
puts 'How many names in array are exactly 5 characters in length?'
puts array.select{|name| name.length == 5}.length

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

 puts 'How would you print out all the names of the artists?'
 puts best_records.keys.join(', ')
 puts 'How would you print out all the names of the albums?'
 puts best_records.values.join(', ')
 puts 'Which artist has the longest name?'
 longest_name = best_records.first
 best_records.each do |name, album|
     if longest_name.length < name.length
         longest_name = name
     end
 end
 puts longest_name
 puts 'How would you change all the album titles for every artist to Greatest Hits?'
 puts best_records.each{|artist, album| best_records[artist] = "New Title"}

ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

puts 'How would you print out all the names of ages?'
puts ages.keys.join(', ')
puts 'How would you print out each key-value pair in the format of <name> is <age> years old.?'
ages.each do |name, age|
    puts "#{name} is #{age} years old."
end
puts 'How would you print out every person with odd numbered age?'
ages.each do |name, age|
    puts "#{name} is #{age} years old."  if age.odd?
end
puts 'How would you delete everyone under 25 years of age?'
ages.delete_if {|name, age| age < 25 }
puts ages
puts 'What is the name and age of everyone with a name greater than or equal to 5 characters?'
ages.select {|name,age|name.length >= 5}.keys.join(', ')

people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Dominick",
          "Tricia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}

puts 'How would you print out all the names of people?'
puts people.keys.join(', ')
puts 'How would you print out all the names of people and which company they work for?'
people.each { |person, info| puts "#{person} works at #{info["company"]}." }
puts 'What are the names of all the children of everyone in people?'
all_children_names = []
people.each { |person, info| all_children_names.push(info["children"])}
puts all_children_names
puts 'What are the names of all the companies that people work for?'
all_company_names = []
people.each { |person, info| all_company_names.push(info["company"])}
puts all_company_names
puts 'How would you convert all the phone numbers to the same standard (pick one)?'
all_phone_numbers = []
people.each do |person, info|
   all_phone_numbers.push(info["phone"].gsub('.','-').gsub(') ','-').gsub('(',''))
end
puts all_phone_numbers

people =
[
    {
          "Derek Wehner" => {
               "phone" => "588-047-7782",
             "company" => "Daniel-Carroll",
            "children" => [
                "Phoebe",
                "Gretchen",
                "Wiley"
            ]
        },
           "Ali Koelpin" => {
               "phone" => "1-127-057-0020",
             "company" => "Rau, Rutherford and Lockman",
            "children" => [
                "Juwan"
            ]
        },
        "Ervin Prohaska" => {
               "phone" => "(393) 630-3354",
             "company" => "Carter Inc",
            "children" => [
                "Virgil",
                "Piper",
                "Josianne"
            ]
        },
          "Hellen Borer" => {
              "phone" => "1-687-825-0947",
            "company" => "Maggio, Ferry and Moen"
        }
    },
    {
        "Elinor Johnson" => {
              "phone" => "819.911.5553",
            "company" => "Pollich Group"
        }
    },
    {
        "Richmond Murray" => {
               "phone" => "1-516-432-2364",
             "company" => "Sporer and Sons",
            "children" => [
                "Kade",
                "Sage"
            ]
        },
            "Nakia Ferry" => {
               "phone" => "134-079-2237",
             "company" => "Hamill, O'Keefe and Lehner",
            "children" => [
                "Rollin"
            ]
        }
    }
]

puts 'What are the names of everyone in people?'
everyone_names = []
people.each do |person, info|
  everyone_names << person.keys
end
puts everyone_names.join(', ')
puts 'What are the names of all the children in people?'
children_names = []
people.each do |person, info|
  person.values.each do |info|
    children_names << info["children"] if info["children"].nil? == false
  end
end
puts children_names.join(', ')
puts 'How would you create a new hash called phone_numbers that has a key of a name and value of a phone number in people?'
phone_numbers = {}
people.each do |person, info|
  person.each do |name, info|
    phone_numbers[name] = info["phone"]
  end
end
puts phone_numbers
puts 'How would you create a new hash called employers that has a key of a name and a value of a company name in people?'
employers = {}
people.each do |person, info|
  person.each do |name, info|
    employers[name] = info["company"]
  end
end
puts employers
puts 'How would you create a new hash called children_count that has a key of a name and a value of the number of children a person has?'
children_count = {}
people.each do |person, info|
  person.each do |name, info|
    children_count[name] = info["children"].count if info["children"].nil? == false
  end
end
puts children_count
