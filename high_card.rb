# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
# select number of players
players = []

ranks.map(&:to_s)
# change all "ranks" values to integers.
# assign value to face cards
"J" = 11
"Q" = 12
"K" = 13
"A" = 14

cards = ranks.each do |ranks|

# define deck as 2.."A" of each suit
deck = ranks.suits["hearts"]
        ranks.suits["spades"]
        ranks.suits["clubs"]
        ranks.suits["diamonds"]
# shuffle cards
deck.shuffle
# take one card off the top of the deck to player one
deck.pop
# take one card off the top of the deck to player two
deck.pop
# score the value of the cards
score.cards
# declare which player wins
