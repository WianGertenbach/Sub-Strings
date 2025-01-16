def substrings(phrase,dictionary)
  dictionary.reduce(Hash.new(0)) do |result, word|
    if phrase.include?(word)
      result[word] += 1
      result
    else
      result
    end
  end
  
end

phrase = "howdy! backend development is fun! frontend development as well"
dictionary = ["back", "end", "development", "front", "well", "how"]

p substrings(phrase,dictionary)
