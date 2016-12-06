# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck = []
ranks.each do |rank|
  suits.each do |suit|
    deck.push("[#{rank}, #{suit}]")
  end
end
deck.shuffle!

while true
  puts "enter name or enter play to start"
  name = gets.chomp
  break if name == "play"
  players.push(name)
end
