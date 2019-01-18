# frozen_string_literal: true

def index_of_max(array)
  array.each_with_index.max[1]
end

def day_trader(price_per_day)
  array = price_per_day
  comparisons = []
  data = []
  best_prices = []

  array.each_with_index do |price, index|
    comparison = array[index..array.length]
    comparison.map! { |e| e - price }
    data.push(comparison)
  end

  highest = []
  data.each do |subed_price|
    concat_prices_max = subed_price.max
    highest.push(concat_prices_max)
  end

  best_prices.push(index_of_max(highest))
  best_prices.push(array.find_index(highest.max + array[index_of_max(highest)]))

  best_prices
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
