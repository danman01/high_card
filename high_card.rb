
# Make a deck
def deck_of_cards
    ranks = %w(2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A')
    suits = %w(hearts, diamonds, clubs, spades)
    deck = []

    ranks.each_with_index do |r, i|
        suits.each do |s|
            deck.push(ranks: r, suits: s, score: i)
        end
    end
#shuffle deck
    deck.shuffle
end

# players:
deck = deck_of_cards
players = []

# get names:
loop do
    puts "Enter names and then enter ok to play"
    puts "#{players.length} players."
      name = gets.chomp
    break if name == 'ok'
    players.push(name)
end

# Map players with cards
cards = players.map do |_player|
    deck.pop
end

# match score with cards.
scores = cards.map do |card|
    card[:scores]
end

high_score = scores.max
puts scores
# Select winners
winner = []

scores.each_with_index do |score, i|
   if score == high_score
    winner.push(players[i])
end
end
#bug that winner doesnt output highest score
puts "The winner is #{winner.max}"
puts 'Check out the stats below'
puts cards
