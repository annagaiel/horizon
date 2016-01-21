# Given: build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

puts vote_results.inspect

puts 'How many people voted in precinct 1?'
puts  vote_results.first.flatten.inject(:+)
puts 'Who was the winning candidate in Precinct 4?'
winner_votes = vote_results.last.max
winner_index = vote_results.last.index winner_votes
puts "#{candidates[winner_index]} won in Precinct 4"
puts 'How many people voted for Mary Sue?'
mary_sue    = 0
billy_joe   = 0
sally_jane  = 0
vote_results.each do |precinct|
    mary_sue += precinct[candidates.index 'Mary Sue']
    sally_jane += precinct[candidates.index 'Sally Jane']
    billy_joe += precinct[candidates.index 'Billy Joe']
end
puts mary_sue
puts 'How many people voted for Billy Joe?'
puts billy_joe
puts 'How many people voted for Sally Jane?'
puts sally_jane
puts 'How many people voted in total?'
puts vote_results.flatten.inject(:+)
puts 'Who had the most votes?'
most_votes = [mary_sue, sally_jane, billy_joe].max
most_votes_index = [mary_sue, sally_jane, billy_joe].index most_votes
puts "#{candidates[most_votes_index]} had the most votes."
