require 'pry'
def substrings word, dictionary 
    dictionary.reduce(Hash.new(0)) { |result, definition| 
        count = word.downcase.split.count { |v| v.include?(definition) }
        result[definition] += count unless count == 0 
        result
    }
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
