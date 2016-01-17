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
crypt_of_civilization.delete_if do |item|
  ["Comptometer","set of scales","sample of aluminum foil"].any? { |phrase| item[phrase] }
end
puts crypt_of_civilization
