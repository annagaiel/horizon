REQUIRED_BAG_SIZE = 10
available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]
possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)
requirements = [:driver, :pitching_wedge, :putter]

puts '***Automated Golf Club Advice:***'
possible_club_selections.each do |club|
  puts "Use the " + club.to_s.gsub('_', ' ')
end

missing_requirements = requirements - possible_club_selections
missing_requirements.each do |club|
  puts "WARNING! You will be without a " + club.to_s.gsub('_', ' ')
end
