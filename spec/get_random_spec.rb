require_relative '../lib/commands/get_random.rb'

describe 'GetRandom.randomize' do
  let(:new_array) { [1, 2, 3, 4, 5] }

  describe '#randomize' do
    it 'returns an integer' do
      expect(GetRandom.randomize(new_array)).to be_a Integer
    end

    it 'returns a integer between 0 and the array length' do
      expect(GetRandom.randomize(new_array)).to be_between(0, new_array.length).inclusive
    end
  end
end
