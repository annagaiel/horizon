tabular = [
    {par:5, score:7},
    {par:4, score:5},
    {par:3, score:3},
    {par:4, score:4},
    {par:4, score:4},
    {par:3, score:2},
    {par:4, score:5},
    {par:5, score:5},
    {par:4, score:5},
    {par:5, score:7},
    {par:4, score:4},
    {par:4, score:4},
    {par:3, score:3},
    {par:4, score:5},
    {par:4, score:5},
    {par:4, score:4},
    {par:3, score:3},
    {par:5, score:6}
]
score_total = 0
par_total = 0
tabular.each do |card|
  par_total += card[:par]
  score_total += card[:score]
end
puts "Total Strokes: #{score_total}"
puts "Total Par: #{par_total}"
difference = score_total - par_total
status = ""
if score_total == par_total
  status = "on"
end
if score_total > par_total
  status = "over"
else
  status = "under"
end
puts "You were #{difference} #{status} par."
