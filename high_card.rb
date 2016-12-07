# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck = []
v = 0
ranks.each do |r|
  suits.each do |s|
    v += 1
    deck.push({
      rank: r,
      suit: s,
      value: v
    }
    )
  end
end
deck.shuffle!

while true
  puts "enter name or enter play to start"
  name = gets.chomp
  break if name == "play"
  players.push(name)
end

cards = players.map do |_|
  deck.pop
end

values = cards.map do |card, name|
  card[:value]
end

high_score = values.max

winners = []

values.each_with_index do |value, index|
  winners.push(players[index]) if value == high_score
end
puts "#{winners[0]} wins."
