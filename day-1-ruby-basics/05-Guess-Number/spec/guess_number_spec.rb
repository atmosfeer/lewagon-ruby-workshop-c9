require '../../rspec_helper'

describe '#random_number' do
  it 'returns an integer' do
    expect([Integer, Fixnum].include?(random_number.class)).to eq true
  end

  it 'returns a number between 1 and 20' do
    expect((1..20).include?(random_number)).to be_truthy
  end
end

describe '#right_number?' do
  it 'says if it\'s the number in question (no)' do
    expect(right_number?(1, 2)).to be_falsey
  end

  it 'says if it\'s the number in question (yes)' do
    expect(right_number?(2, 2)).to be_truthy
  end

  it 'says if it\'s the number in question (yes)' do
    expect(right_number?(20, 20)).to be_truthy
  end
end

describe '#greater_number?' do
  it 'returns true if your answer is greater than the right one' do
    expect(greater_number?(5, 2)).to be_truthy
  end

  it 'returns false if your answer is less than the right one' do
    expect(greater_number?(3, 7)).to be_falsey
  end
end
