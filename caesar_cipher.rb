def caesar_cipher(string, shift)
  alphabet = ("a".."z").to_a
  result = string.chars.map do |char|
    if ("a".."z").include?(char)
      new_index = (alphabet.index(char) + shift) % 26
      alphabet[new_index]
    elsif ("A".."Z").include?(char)
      new_index = (alphabet.index(char.downcase) + shift) % 26
      alphabet[new_index].upcase
    else
      char
    end
  end
  result.join
end
