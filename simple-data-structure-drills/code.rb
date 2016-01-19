transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

puts '** What is the value of the first transaction?'
puts transactions.first
puts '** What is the value of the second transaction?'
puts transactions[1]
puts '** What is the value of the fourth transaction?'
puts transactions[3]
puts '** What is the value of the last transaction?'
puts transactions[-1]
puts '** What is the value of the second from last transaction?'
puts transactions[-2]
puts '** What is the value of the 5th from last transaction?'
puts transactions[-5]
puts '** What is the value of the transaction with index 5?'
puts "transaction with index 5 = #{transactions[5]}"
puts '** How many transactions are there in total?'
puts transactions.length
puts '** How many positive transactions are there in total?'
pos_transactions = transactions.select { |a| a >= 0 }
puts pos_transactions.length
puts '** How many negative transactions are there in total?'
neg_transactions = transactions.select { |a| a < 0 }
puts neg_transactions.length
puts '** What is the largest withdrawal?'
puts neg_transactions.min
puts '** What is the largest deposit?'
puts pos_transactions.max
puts '** What is the small withdrawal?'
puts neg_transactions.max
puts '** What is the smallest deposit?'
puts pos_transactions.min
puts '** What is the total value of all the transactions?'
total = transactions.inject(:+)
puts total
puts "** If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?"
puts 239_900 - total

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

 puts '** How many records are in best_records?'
 puts best_records.length
 puts '** Who are all the artists listed?'
 puts best_records.keys.join(", ")
 puts '** What are all the album names in the hash?'
 puts best_records.values.join(", ")
 puts '** Delete the Eminem key-value pair from the list.'
 best_records.delete("Eminem")
 puts '** Add your favorite musician and their best album to the list.'
 best_records["Britney"] = "Circus"
 puts "** Change Nirvana's album to another."
 best_records["Nirvana"] = "Bleach"
 puts '** Is Nirvana included in best_records?'
 puts best_records.include? "Nirvana" ? 'Yes' : 'No'
 puts '** Is Soundgarden included in best_records?'
 puts best_records.include? "Soundgarden" ? 'Yes' : 'No'
 puts '** If Soundgarden is not in best_records then add a key-value pair for the band.'
 if best_records["Soundgarden"] == "Superunknown"
   puts "#{best_records["Soundgarden"]} album exist"
 else
   best_records["Soundgarden"] = "Superunknown"
   puts "#{best_records["Soundgarden"]} album was added."
 end
 puts '** Which key-value pairs have a key that has a length less than or equal to 6 characters?'
 puts best_records.select {|k, v| k.length <= 6 }
 puts '** Which key-value pairs have a value that is greater than 10 characters?'
 puts best_records.select {|k, v| v.length > 10 }
