# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck=[]
deck2=[]

players = []

 ranks.each do |ranks|
   suits.each do |suits|
    puts "#{ranks} #{suits}"
   
 deck2=[ranks,suits]
 deck.push(deck2)  
   end
 end  
