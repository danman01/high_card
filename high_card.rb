# Use these two arrays to generate a deck of cards.
ranks = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
suits = %w(Hearts Spades Clubs Diamonds)
replay_hand = true  # To allow for replaying upon a tie

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
  print "#{players.length} players so far. Enter a player name or enter 'play': "
  user_input = gets.chomp
  if user_input.length > 0 && user_input != 'play'
    players.push({name: user_input, rank: 0})
  end
end

# players.push({name: "Dick", rank: 0})
# players.push({name: "Jane", rank: 0})
# players.push({name: "Buck", rank: 0})

winner = {
  name: '',
  rank: 0
}

def get_rank(card_value)
  rank = nil
  case card_value
  when (2..10)
    rank = card_value - 1
  when 'J'
    rank = 10
  when 'Q'
    rank = 11
  when 'K'
    rank = 12
  when 'A'
    rank = 13
  end
  return rank
end

#
# Not a terribly elegant solution for Bonus 1 and 2
#

while replay_hand do  # Loop in case of tie

    puts "\n"

    players.each_with_index do |player, index|
        card = deck[index]
        card_value = card[0]
        rank = get_rank(card_value)
        player[:rank] = rank
        puts "Player: #{player[:name]} draws #{card_value} of #{card[1]}"

        if winner[:rank] < rank
          winner[:rank] = rank
          winner[:name] = player[:name]
        end
    end

    rank_array = []           # holds player score ranks
    winner_index_array = []   # hold the index for the high scores

    players.each {|i| rank_array.push(i[:rank].to_i)}  # populate rank_array with rank values

    rank_array.each_with_index do |val,i|   # populate winner_index_array with index of winners
        if val == rank_array.max
          winner_index_array.push(i)
        end
    end

    if winner_index_array.length == 1       # no ties
        puts "\nWinner: #{winner[:name]}"
        replay_hand = false
    else                                     # if there is a tie amoung the high scorers
        puts "\nThere is a tie!"
        winner_index_array.each {|i| puts "Winners: #{players[i][:name]}" }
        puts "\nReplaying hand!"
        deck.shuffle!   # reshuffle to play again
    end

end
