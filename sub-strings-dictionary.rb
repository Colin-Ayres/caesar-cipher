def substrings(phrase, dictionary)
    #/\W/ is regex which, combined with split, seperates the phrase into an array with elements that each contain an individual word
    phrase_array = phrase.downcase.split(/\W/)
    #Collects number of times each word in the split phrase includes a word in the dictionary
    dictionary.reduce(Hash.new(0)) do |hash, word|
        phrase_array.each do |elememt|
            hash[word] += 1 if element.include?(word)
        end
    hash
    end    
end

#Test case
#dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#p substrings("Howdy partner, sit down! How's it going?", dictionary)
#phrase_array => ["howdy", "partner", "", "sit", "down", "", "how", "s", "it", "going"]
#hash => {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
