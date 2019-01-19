# frozen_string_literal: true

require 'pry'

def word_counter(sentence, dictionnary)
  occurence_hash = {}
  dictionnary.each_with_index do |dic_word, index|
    num_of_occurence = 0
    sentence.split.each do |word|
      if word.downcase.include? dic_word
        num_of_occurence += 1
      end
      occurence_hash.store(dictionnary[index], num_of_occurence)
    end
  end
  occurence_hash
end
