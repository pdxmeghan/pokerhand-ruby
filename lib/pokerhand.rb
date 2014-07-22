def pokerhand(cards)
  hand_array = cards
  num_array = [hand_array[0][0], hand_array[1][0], hand_array[2][0], hand_array[3][0], hand_array[4][0]]
  suit_array = [hand_array[0][1], hand_array[1][1], hand_array[2][1], hand_array[3][1], hand_array[4][1]]
  sort = num_array.sort
  results = []

  if((sort[4].to_i) - (sort[0].to_i) + 1) == 5
    results << "straight"
  end

results.join("")

end
