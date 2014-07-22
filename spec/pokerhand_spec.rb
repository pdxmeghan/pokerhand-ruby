require ('rspec')
require ('pokerhand')

describe('pokerhand') do
  it("returns a 'straight'") do
    pokerhand(['2S', '3C', '4D', '5C', '6H']).should(eq('straight'))
  end
  it("returns a 'pair'") do
    pokerhand(['2S', '3C', '4D', '5C', '2H']).should(eq('pair'))
  end
end
