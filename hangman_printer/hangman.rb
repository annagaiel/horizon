def print_puzzle(word, guess_list = nil)
  result = []
  word.each_char.with_index do |char, index|
    if guess_list.nil?
      result << "_"
    else
      if guess_list.include? char
        result[word.index(char)] = char
      else
        result[index] =  "_"
      end
    end
  end
  result.join(' ')
end
puts print_puzzle("perimeter")
puts print_puzzle("triangle",['t','s','g'])
puts print_puzzle("square",['u','s','e'])
