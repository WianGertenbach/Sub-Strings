def substrings(phrase,dictionary)
  dictionary.map {|word| word if phrase.include?(word)}.compact

end

phrase = "howdy! backend development is fun! frontend development as well"
dictionary = ["back", "end", "development", "front", "well", "how"]

puts substrings(phrase,dictionary)
