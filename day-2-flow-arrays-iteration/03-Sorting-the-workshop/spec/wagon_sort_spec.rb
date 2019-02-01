require '../../rspec_helper'

describe "#workshop_sort" do
  it "should return an empty array if given an empty array" do
    expect(workshop_sort([])).to eq []
  end

  it "should sort all-caps students" do
    expect(workshop_sort(["BOB", "ALICE", "CHARLIE"])).to eq(["ALICE", "BOB", "CHARLIE"])
  end

  it "should be case-insensitive" do
    expect(workshop_sort(["BOB", "alice", "CHARLIE"])).to eq(["alice", "BOB", "CHARLIE"])
  end
end
