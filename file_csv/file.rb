# File.open('hello.txt', 'w') do |f|
#   f.puts 'hello, world!'
# end

# File.open('hello.txt', 'r') { |f| f.read }
File.open('hello.txt', 'r') do |f|
  puts f.read
end
