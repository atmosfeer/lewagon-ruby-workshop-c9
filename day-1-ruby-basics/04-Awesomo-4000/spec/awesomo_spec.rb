# Encoding: utf-8
require '../../rspec_helper'

describe '#plot_generator' do
  it 'returns a string' do
    expect(plot_generator.class).to eq String
  end

  it 'gets the right word count' do
    expect(plot_generator.split(' ').count).to be > 6
  end

  it 'returns different results each time' do
    v1 = plot_generator
    v2 = plot_generator
    expect(v1).to_not eq v2
  end
end
