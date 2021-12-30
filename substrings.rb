def get_words_array(string)
  string.downcase.split(" ")
end

def find_word_substrings(word)
  letters_array = word.split("")
  last_letter_pos = letters_array.length - 1
  sub_str_array = []

  letters_array.each_with_index do |letter, first_letter_pos|
    until last_letter_pos < first_letter_pos
      sub_str = letters_array[first_letter_pos..last_letter_pos]
      sub_str_array.push(sub_str.join(""))
      last_letter_pos -= 1
    end
    
    first_letter_pos += 1
    last_letter_pos = letters_array.length - 1
  end

  sub_str_array
end

def find_words_substrings(sentence_array)
  sentence_substrings = sentence_array.map do |word|
    find_word_substrings(word)
  end
  sentence_substrings.flatten
end

def find_substring_matches(input_substrings, dictionary)
  substring_count = input_substrings.tally
  substring_count.select do |substring, count|
    dictionary.include?(substring)
  end
end

def substrings(input_string, dictionary)
  words_array = get_words_array(input_string)
  words_substrings = find_words_substrings(words_array)
  substring_count = find_substring_matches(words_substrings, dictionary)
  substring_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

test_string = "Howdy partner, sit down! How's it going?"

substrings(test_string, dictionary)