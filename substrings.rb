# define a substrings method
# that receives arugment word String Obj
# and dictionary Array Obj
# that returns a hash that
# the word in dictionary as substring (key) 
# of the word argument counts as 1 (value)
# 
# String[substring]
# 'foo'['oo'] #=> 'oo'

def substrings(word, dictionary)
  separated_words = word.downcase.split(' ')

  # automatic elimination of false values
  dictionary.inject(Hash.new(0)) do |acc, curr|
    
    # that is value that is equal to nil
    separated_words.each do |value|
      acc[curr] += 1 if value[curr]
    end

    acc
  end
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
