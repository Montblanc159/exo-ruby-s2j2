# frozen_string_literal: true

require_relative '../lib/00_villani.rb'

describe "the multiples of 3 or 5 method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(multiples_of_3_or_5?(5)).to eq(true)

    expect(multiples_of_3_or_5?(9)).to eq(true)

    expect(multiples_of_3_or_5?(3)).to eq(true)
  end

  it "should return FALSE when an integer is not a multiple of 3 or 5" do
    expect(multiples_of_3_or_5?(17)).to eq(false)

    expect(multiples_of_3_or_5?(559)).to eq(false)

    expect(multiples_of_3_or_5?(787)).to eq(false)
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
