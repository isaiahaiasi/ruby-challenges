require_relative './substrings'

RSpec.describe 'Substrings >>' do
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  it 'finds substrings' do
    input = "below"
    expected = {"below" => 1, "low" => 1}
    expect(substrings(input, dictionary)).to eq(expected)
  end

  it 'finds multiple of a substring' do
    input = "Howdy partner, sit down! How's it going?"
    expected = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
    expect(substrings(input, dictionary)).to eq(expected)
  end
end
