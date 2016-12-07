# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# My Variables
players = []
deck = []
player_cards = []
shuffled = []

# Create Deck
ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end

# Shuffle Deck
shuffled = deck.shuffle

# Get number of players
puts "How many players?"
number_of_players = gets.chomp.to_i

# Get Player names
i = 0
puts "Please enter their names followed by 'enter'."
while i < number_of_players
  players[i] = gets.chomp
  i += 1
end


# Set up an array with players and cards merged
j = 0
while j < number_of_players
  player_cards[j] = players[j], shuffled[j]
  j += 1
end

# Change Aces, Kings, Queens, & Jacks to integers and sort
k = 0
while k < number_of_players
  if player_cards[k][1][0] == "A"
    player_cards[k][1][0] = 14
  elsif player_cards[k][1][0] == "K"
    player_cards[k][1][0] = 13
  elsif player_cards[k][1][0] == "Q"
    player_cards[k][1][0] = 12
  elsif player_cards[k][1][0] == "J"
    player_cards[k][1][0] = 11
  end
  k += 1
end

reversed_order = player_cards.sort {|a,b| a[1] <=> b[1]}

winning_order = reversed_order.reverse


# Print winning order with A K Q J back in play

puts "The winning order is:"

k = 0
while k < number_of_players
  if winning_order[k][1][0] == 14
    winning_order[k][1][0] = "A"
  elsif winning_order[k][1][0] == 13
    winning_order[k][1][0] = "K"
  elsif winning_order[k][1][0] == 12
    winning_order[k][1][0] = "Q"
  elsif player_cards[k][1][0] == 11
    winning_order[k][1][0] = "J"
  end
  print winning_order[k]
  print "\n"
  k += 1
end
