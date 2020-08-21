require './lib/data/motivational_quotes.rb'

describe '#motivational_quotes' do
  it 'returns an array' do
    expect(Motivation.motivational_quotes).to be_a Array
  end

  it 'returns a string that is inside the array' do
    expect(Motivation.motivational_quotes[-1]).to be_a String
  end
end
