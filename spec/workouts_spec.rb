require_relative 'lib/data/workouts.rb'

describe '#workouts_list ' do
  it 'returns an array' do
    expect(Workouts.workouts_list).to be_a Array
  end

  it 'returns a string that is inside the array' do
    expect(Workouts.workouts_list[-1]).to be_a String
  end
end
