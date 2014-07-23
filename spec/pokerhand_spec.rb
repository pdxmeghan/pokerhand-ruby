require ('rspec')
require ('pokerhand')

describe('pokerhand') do
  it("returns a 'straight'") do
    pokerhand(['2S', '3C', '4D', '5C', '6H']).should(eq('straight'))
  end
  it("returns 'two of a kind'") do
    pokerhand(['2S', '3C', '4D', '5C', '2H']).should(eq('two of a kind'))
  end
  it("returns 'three of a kind'") do
    pokerhand(['2S', '4D', '5H', '2C', '2H']).should(eq('three of a kind'))
  end
  it("returns 'four of a kind'") do
    pokerhand(['2S', '2D', '2C', '2H', '4D']).should(eq('four of a kind'))
  end
  it("returns 'two pair'") do
    pokerhand(['2S', '2S', '4D', '5C', '5S']).should(eq('two pair'))
  end
  it("returns 'two pair'") do
    pokerhand(["10D", "10S", "2S", "2D", "4H"]).should(eq('two pair'))
  end
  it("returns 'two of a kind' for a card with ten") do
    pokerhand(["AS", "10S", "AH", "JH", "QD"]).should(eq('two of a kind'))
  end
  it("returns 'straight flush'") do
    pokerhand(["JC", "10C", "9C", "8C", "7C"]).should(eq('straight flush'))
  end
  it("returns 'full house'") do
    pokerhand(["5S", "5H", "5D", "8S", "8H"]).should(eq('full house'))
  end
  it("returns 'flush'") do
    pokerhand(["AS", "JS", "10S", "6S", "7S"]).should(eq('flush'))
  end
  it("returns 'royal flush'") do
    pokerhand(["AH", "KH", "QH", "10H", "JH"]).should(eq('royal flush'))
  end
end
