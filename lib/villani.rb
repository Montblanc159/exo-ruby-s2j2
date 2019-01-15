# frozen_string_literal: true

def multiples_of_3_or_5?(number)
  if (number % 3).zero?
    true
  elsif (number % 5).zero?
    true
  else
    false
  end
end

def sum_of_3_or_5_multiples(target_num)
  if target_num.is_a?(String) || target_num.is_a?(Float) || target_num.negative?
    return "Yo ! Je ne prends que les entiers naturels. TG"
  end

  i = 0
  list_of_numbers = []
  while i < target_num
    list_of_numbers[i] = i
    i += 1
  end
  sum = 0
  list_of_numbers.each do |number|
    if multiples_of_3_or_5?(number)
      sum += number
    else
      sum = sum
    end
  end
  sum
end
