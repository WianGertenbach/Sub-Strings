def substrings(phrase,dictionary)
  phrase = phrase.downcase
  dictionary.reduce(Hash.new(0)) do |result, word|
    matches = phrase.scan(word)
    num_matches = matches.size

    unless matches.empty?
      result[word] += num_matches
    end
    result

  end
end

phrase = "howdy! backend development is fun! frontend development as well. How do you like it?"
dictionary = ["back", "end", "development", "front", "well", "how", "i"]

p substrings(phrase,dictionary)
