require_relative '../lib/villani.rb'

describe "the multiples of 3 or 5 function" do
  it "5 is a multiple of 5" do
    expect(multiples_of_3_or_5?(5)).to eq(true)
  end

  it "17 is not a multiple of 5" do
    expect(multiples_of_3_or_5?(17)).to eq(false)
  end

  it "9 is a multiple of 3" do
    expect(multiples_of_3_or_5?(9)).to eq(true)
  end

  it "3 is a multiple of 3" do
    expect(multiples_of_3_or_5?(3)).to eq(true)
  end
end

describe "sum all the integers" do
  it "adds up to 33" do
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
  end

  it "adds up to 23" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
  end

  it "adds up to 0" do
    expect(sum_of_3_or_5_multiples(3 || 0)).to eq(0)
  end

  it "prints out" do
    expect(sum_of_3_or_5_multiples("good" || 1.5 || -1))
  end
end
