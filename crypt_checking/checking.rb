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

puts "Does the array contain 'container of beer'?"
puts crypt_of_civilization.include? 'container of beer'
puts "Does the array contain 'Toast-O-Lator'?"
puts crypt_of_civilization.include? 'Toast-O-Lator'
puts "Does the array contain 'plastic bird'?"
puts crypt_of_civilization.include? 'plastic bird'
