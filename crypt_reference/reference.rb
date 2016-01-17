crypt_of_civilization = []
extra = ["container of beer", "Lionel model train set", "Ingraham pocket watch"]
crypt_of_civilization << 'A Comptometer'
crypt_of_civilization << 'A box of phonographic records'
crypt_of_civilization << 'A plastic savings bank'
crypt_of_civilization << 'A set of scales'
crypt_of_civilization << 'A Toast-O-Lator'
crypt_of_civilization << 'A sample of aluminum foil'
crypt_of_civilization << 'A Donald Duck doll'
crypt_of_civilization = crypt_of_civilization.concat extra

puts 'How many items are in the array?'
puts crypt_of_civilization.length
puts 'What is the first item in the array?'
puts crypt_of_civilization.first
puts 'What is the last item in the array?'
puts crypt_of_civilization.last
puts 'What is the second item in the array?'
puts crypt_of_civilization[1]
puts 'What is the third item in the array?'
puts crypt_of_civilization[2]
puts 'What is the second from last item in the array?'
puts crypt_of_civilization[-2]
puts "What is the index of \"Toast-O-Lator\"?"
puts crypt_of_civilization.index('A Toast-O-Lator')
