# Encoding: utf-8
require '../../rspec_helper'

describe "#get_rid_of_surrounding_whitespaces" do

  it "should get rid of both leading and trailing whitespaces" do
    expect( get_rid_of_surrounding_whitespaces("  hey yo  ") ).to eq("hey yo")
    expect( get_rid_of_surrounding_whitespaces("  nice try!") ).to eq("nice try!")
  end

end


describe "#belongs_to?" do

  it "should return true if the word is included in the string" do
    expect( belongs_to?("hey jude", "jude") ).to eq(true)
    expect( belongs_to?("paperback writer", "paper") ).to eq(true)
  end

  it "should return false if the word is not in the string" do
    expect( belongs_to?("hey jude", "joe") ).to eq(false)
    expect( belongs_to?("paperback writer", "monkey") ).to eq(false)
  end


end

describe "#replace" do

  it "should correctly replace the letter in the string" do
    expect( replace("casanova", "a", "o") ).to eq "cosonovo"
    expect( replace("mini bikini", "i", "e") ).to eq "mene bekene"
  end

end

describe "#exactly_divide" do

  it "should compute the floating division" do
    expect( exactly_divide(13, 4) ).to eq 3.25
    expect( exactly_divide(11, 2) ).to eq 5.5
  end

end

describe "#divisible_by_two?" do

  it "should return true if number is even" do
    expect( divisible_by_two?(6) ).to eq true
    expect( divisible_by_two?(18) ).to eq true
  end

  it "should return false if number is odd" do
    expect( divisible_by_two?(7) ).to eq false
    expect( divisible_by_two?(13) ).to eq false
  end

end

describe "#random_subset" do

  let(:array) { ('a'..'z').to_a }
  let(:random_subset_example) { random_subset(array, 4) }

  it "should return array of correct size" do
    expect(random_subset_example).to be_a Array
    expect(random_subset_example.size).to eq 4 if random_subset_example.is_a? Array
  end

  it "should return random elements" do
    other_random_subset_example = random_subset(('a'..'z').to_a, 4)
    expect(random_subset_example).not_to eq other_random_subset_example
  end

  it "should return elements present in the initial array" do
    expect(random_subset_example - array).to be_empty
  end

end

describe "#randomize" do

  let(:array) { ('a'..'z').to_a }
  let(:response) { randomize(array) }

  it "should return random elements" do
    other_response = randomize(array)
    expect(response).not_to eq other_response
  end

  it "should return random copy of the initial array" do
    expect(response).to be_a Array
    expect(response.sort).to eq array.sort
  end

end

describe "#ascending_order" do

  it "should return the sorted array" do
    array = ('a'..'z').to_a.shuffle
    response = ascending_order(array)
    expect(response).to eq array.sort
  end

end

