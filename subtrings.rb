def substrings(string, dictionary)
  
  word_arr = string.downcase.split
  word_arr.reduce(Hash.new(0)) do |result, word|
    
    if dictionary.include? word
      result[word] += 1
    end
    
    result
  end

end 
