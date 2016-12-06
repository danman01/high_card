# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end

deck.shuffle!

players = []
user_input = ''

while user_input != 'play'
  puts "#{players.length} players so far. Enter a player name or enter 'play'"
  user_input = gets.chomp
  if user_input.length > 0 && user_input != 'play'
    players.push({name: user_input})
  end
end
