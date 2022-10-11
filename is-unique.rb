# Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures? 

def is_unique?(string)
  if string.class != String
    raise "input string should be of class String"
  end
  string_hash = {}
  i = 0
  while i < string.length
    if string_hash[string[i]]
      return false
    else
      string_hash[string[i]] = 1
    end
    i += 1
  end
  true 
end

puts is_unique?("bye") == true
puts is_unique?("hello") == false
puts is_unique?(9) == true

