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

i = 0
while i <= crypt_of_civilization.length - 1 do
  puts crypt_of_civilization[i]
  i += 1
end

crypt_of_civilization.each { |item| puts item }
