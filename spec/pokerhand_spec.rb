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
end
