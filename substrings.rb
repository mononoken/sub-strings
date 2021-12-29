dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

test_string = "Howdy partner, sit down! How's it going?"

def substrings(input_string, dictionary)
  words_array = input_string.downcase.split

end

def find_words_substrings(word)
  letters_array = word.split("")
  first_letter_pos = 0
  last_letter_pos = letters_array.length - 1
  sub_str_array = []

  until last_letter_pos <= first_letter_pos
    sub_str = letters_array[first_letter_pos,last_letter_pos]
    sub_str_array.push(sub_str.join(""))
    last_letter_pos -= 1
  end
  sub_str_array
end

substrings(test_string, dictionary)