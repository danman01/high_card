# Use these two arrays to generate a deck of cards.
ranks = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
suits = %w(hearts spades clubs diamonds)

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

players.each_with_index do |player, index|
  card = deck[index]
  card_value = card[0]
  rank = get_rank(card_value)

  if winner[:rank] < rank
    winner[:rank] = rank
    winner[:name] = player[:name]
  end
end

puts "Winner: #{winner[:name]}"
