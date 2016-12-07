# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck = []


v = 0
ranks.each do |r|
  suits.each do |s|
    v += 1
    deck.push({rank: r, suit: s, value: v})
  end
end

deck.shuffle!

while true
  puts "enter name or enter play to start"
  name = gets.chomp
  break if name == "play"
  players.push(name)
end

cards = players.map do
  deck.pop
end

values = cards.map do |card|
  card[:value]
end

# values = players.map do |name|
#   name[:players]
# end

high_score = values.max

x = 0
players.each do
  puts "#{players[x]} chose #{cards[x]}"
  x += 1
end

puts "this is the high_score"
puts high_score

winners = []

values.each_with_index do |value, index|
  winners.push(players[index]) if value == high_score
end

puts "#{winners[0]} wins"
