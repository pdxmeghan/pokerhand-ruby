def pokerhand(cards)
  hand_array = cards
  num_array = [hand_array[0][0], hand_array[1][0], hand_array[2][0], hand_array[3][0], hand_array[4][0]]
  suit_array = [hand_array[0][1], hand_array[1][1], hand_array[2][1], hand_array[3][1], hand_array[4][1]]
  sort = num_array.sort
  pull = sort.uniq
  results = []

  doubles = Hash.new(0)

  num_array.each do |element|
    doubles[element] += 1
  end

  if((sort[4].to_i) - (sort[0].to_i) + 1) == 5
    results << "straight"
  elsif doubles.length == 3 && doubles.has_value?(3)
    results << "three of a kind"
  elsif doubles.length == 4 && doubles.has_value?(2)
    results << "two of a kind"
  elsif doubles.length == 2 && doubles.has_value?(4)
    results << "four of a kind"
  elsif doubles.length == 3 && doubles.has_value?(2)
    results << "two pair"
  end

results.join("")

end
