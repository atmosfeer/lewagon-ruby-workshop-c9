require '../../rspec_helper'

describe "#beer_song" do

  it "should sing the beer song for one beer!" do
    result = beer_song(1)
    expect(result).to eq "1 bottle of beer on the wall, 1 bottle of beer!
Take one down, pass it around, no more bottles of beer on the wall!"
  end

  it "should sing the beer song for two beers" do
    result = beer_song(2)
    expect(result).to eq "2 bottles of beer on the wall, 2 bottles of beer!
Take one down, pass it around, 1 bottle of beer on the wall!
1 bottle of beer on the wall, 1 bottle of beer!
Take one down, pass it around, no more bottles of beer on the wall!"
  end
end
