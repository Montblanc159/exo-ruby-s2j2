require 'pry'

def word_counter(sentence, dictionnary)
  occurence_hash = {}
  dictionnary.each_with_index do |dic_word, index|
    num_of_occurence = 0
    sentence.split.each do |word|
      if word.include? dic_word
        num_of_occurence += 1
      end
    end
    occurence_hash[dictionnary[index]] = num_of_occurence
  end
end

word_counter()
