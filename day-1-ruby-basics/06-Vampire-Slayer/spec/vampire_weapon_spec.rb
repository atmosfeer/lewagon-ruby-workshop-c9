# Encoding: utf-8
require '../../rspec_helper'

describe 'The method vampire_reaction' do
  it 'returns a String' do
    expect(vampire_reaction('sword')).to be_a String
  end

  it 'makes the vampire laugh at ineffective weapons' do
    expect(vampire_reaction('pizza cutter')).to match(/laugh/)
  end

  it 'slays the vampire and ends the story' do
    expect(vampire_reaction('stake')).to match(/(win|won|slain|slayed)/)
  end
end

describe 'The method vampire_reaction_enhanced' do
  it 'returns a String' do
    expect(vampire_reaction_enhanced('stake', 'wood')).to be_a String
  end

  it 'makes the vampire laugh at ineffective weapons' do
    expect(vampire_reaction_enhanced('pizza cutter', 'plastic')).to match(/laugh/)
    expect(vampire_reaction_enhanced('dollhouse', 'lead')).to match(/laugh/)
  end

  it 'makes the vampire disintegrate' do
    expect(vampire_reaction_enhanced('stake', 'wood')).to match(/disintegrate/)
  end

  it 'makes the vampire explode even with the pizza cutter' do
    expect(vampire_reaction_enhanced('pizza cutter', 'silver')).to match(/explode/)
    expect(vampire_reaction_enhanced('sword', 'silver')).to match(/explode/)
    expect(vampire_reaction_enhanced('dull spoon', 'silver')).to match(/explode/)
  end
end
