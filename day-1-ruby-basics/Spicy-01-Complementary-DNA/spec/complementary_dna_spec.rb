require '../../rspec_helper'

MAPPING = {
  "A" => "T",
  "T" => "A",
  "C" => "G",
  "G" => "C",
  "ATTGC" => "TAACG",
  "GTAT" => "CATA",
  "GTACGATACGCACCGGGGGACCCGGCG" => "CATGCTATGCGTGGCCCCCTGGGCCGC"
}

describe "complementary_dna" do
  MAPPING.each do |from, to|
    it "should complement #{from} with #{to}" do
      expect(complementary_dna(from)).to eq(to)
    end
  end
end
