# Given two strings, write a method to decide if one is a permutation of the other

# create and empty hash to store letter, and the number of occurences of each letter as values of the first string
# loop through first string 
  # if we have already seen the letter, increment value by 1, else set value as key to hash with value of 1
# loop through the second string
  # if the letter is in the hash, decrement value by 1
  # if the letter is NOT in the hash, return false


def is_permutation?(str1, str2)
  if str1.length != str2.length
    return false
  end
  string_hash = {}  
  i = 0
  while i < str1.length
    if string_hash[str1[i]]
      string_hash[str1[i]] += 1
    else
      string_hash[str1[i]] = 1
    end
    i += 1
  end
  i = 0
  while i < str2.length
    if string_hash[str2[i]]
      string_hash[str2[i]] -= 1
    else
      return false
    end
    i += 1
  end
  string_hash.values.each do |value|
    if value != 0 
      return false
    end
  end
  return true
end

puts is_permutation?("dog", "god") == true
puts is_permutation?("taco cat", "cat taco") == true
puts is_permutation?("hello", "goodbye") == false