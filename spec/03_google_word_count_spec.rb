require_relative '../lib/03_google_word_count'

describe "it should count the words in a given sentence that are in the given dictionnary" do
  it "should return 1 below and 1 low" do
      expect(word_counter("below", ["below", "low"])).to eq({"below"=>1, "low"=>1})
  end
end
