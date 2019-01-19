# frozen_string_literal: true

require_relative '../lib/02_jean_mich_trade'

describe "it decides of the best days to buy and sell actions" do
  it "should return [1, 4]" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
  end
end
