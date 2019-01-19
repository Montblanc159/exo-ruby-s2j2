def shakes_dic
  dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
end

def swear_dic
  dictionnary = File.open('./lib/content/swear_words.txt').read.split(/\r\n/)
end

def corpus_file
  corpus = File.open('./lib/content/shakespeare.txt').read.split(" ")
end

def find_words
  occurence_hash = {}
  corpus = corpus_file
  shakes_dic.each_with_index do |dic_word, index|
    num_of_occurence = 0
    corpus.each do |corpus_word|
      if corpus_word.downcase.include? dic_word
        num_of_occurence += 1
      end
      occurence_hash.store(shakes_dic[index], num_of_occurence)
    end
  end
  occurence_hash
end

def find_swear_words
  occurence_hash = {}
  corpus = corpus_file
  swear = swear_dic
  swear.each_with_index do |dic_word, index|
    num_of_occurence = 0
    corpus.each do |corpus_word|
      if corpus_word.downcase.include? dic_word
        num_of_occurence += 1
      end
      occurence_hash.store(swear[index], num_of_occurence)
    end
  end
  occurence_hash
end

# puts swear_dic
puts find_swear_words
