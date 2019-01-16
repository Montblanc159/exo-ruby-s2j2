# frozen_string_literal: true

def ascii_encoder_decoder(letter)
  if letter.is_a?(String)
    letter.ord
  elsif letter.is_a?(Integer)
    letter.chr
  end
end

def encrypt_ascii(ascii_code, num_shift)
  punctuation_num = [32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 91, 92, 93, 94, 95, 96, 123, 124, 125, 126]
  if punctuation_num.include?(ascii_code)
    ascii_code
  elsif ascii_code >= 97 && ascii_code + num_shift > 122
    ascii_code + num_shift - 122 + 96
  elsif ascii_code <= 90 && ascii_code + num_shift > 90
    ascii_code + num_shift - 90 + 64
  else
    ascii_code += num_shift
  end
end

def caesar_cipher(sentence, num_shift)
  words = sentence.split
  index = 0
  words.each do |word|
    letters = word.chars
    ltr_index = 0
    letters.each do |letter|
      letter = ascii_encoder_decoder(letter)
      letter = encrypt_ascii(letter, num_shift)
      letter = ascii_encoder_decoder(letter)
      letters[ltr_index] = letter
      ltr_index += 1
    end
    word = letters.join
    words[index] = word
    index += 1
  end
  words.join(" ")
end
