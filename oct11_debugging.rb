def select_cards(possible_cards, hand, no_hand)

  possible_cards.each_with_index do |current_card, i|
    if no_hand.length < 2
    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp
    end
    if   no_hand.length >= 2 || answer.downcase == 'y'
      hand << current_card
    else
      no_hand << current_card
    end
    break if hand.length == 3
  end
  return hand

end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [], [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
