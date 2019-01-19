require_relative '../lib/04_shakespeare_count'

describe "it should find the words given in the dictionnary in the shakespeare corpus" do
  it "should return a hash" do
    expect(find_words.class).to eq(Hash)
  end
end

describe "it should find the swear words given in the dictionnary in the shakespeare corpus" do
  it "should return a hash" do
    expect(find_swear_words.class).to eq(Hash)
  end
end
