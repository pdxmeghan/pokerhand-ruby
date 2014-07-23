def pokerhand(cards)
  hand_array = cards
  num_array = []
  suit_array = []
  card_value = {
                'J' => 11,
                'Q' => 12,
                'K' => 13,
                'A' => 14}

  hand_array.each do |card|
    if(card.length == 3)
      num_array << card[0] + card[1]
      suit_array << card[2]
    else
      if (card[0].to_i != 0)
        num_array << card[0]
        suit_array << card[1]
      else
        num_array << card_value[card[0]]
        suit_array << card[1]
      end
    end
  end

sorted_num_array = []
  num_array.each do |i|
    sorted_num_array << i.to_i
  end

  sorted = sorted_num_array.sort
  results = []

  doubles = Hash.new(0)
  suit_hash = Hash.new(0)

  num_array.each do |element|
    doubles[element] += 1
  end

  suit_array.each do |element|
    suit_hash[element] += 1
  end

  if doubles.length == 2 && doubles.has_value?(3)
    results << "full house"
  elsif doubles.length == 3 && doubles.has_value?(3)
    results << "three of a kind"
  elsif doubles.length == 4 && doubles.has_value?(2)
    results << "two of a kind"
  elsif doubles.length == 2 && doubles.has_value?(4)
    results << "four of a kind"
  elsif doubles.length == 3 && doubles.has_value?(2)
    results << "two pair"
  elsif (((sorted[4].to_i) - (sorted[0].to_i) + 1) == 5) && (suit_hash.length == 1 && suit_hash.has_value?(5))
    results << "straight flush"
  elsif((sorted[4].to_i) - (sorted[0].to_i) + 1) == 5
    results << "straight"
  elsif (suit_hash.length == 1)
    results << "flush"
  end

results.join("")

end

# p pokerhand(["JC", "10C", "9C", "8C", "7C"])

