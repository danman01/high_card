# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

deck = []
suits.each do |suit|
  ranks.each do |rank|
    deck.push("#{rank}, #{suit}")
  end
end
deck.shuffle!


while true
  puts "#{players.length} players so far. Enter a player name, or type 'play'."
  name = gets.chomp
  break if name == "play"
  players.push('name: ' + name)
end
