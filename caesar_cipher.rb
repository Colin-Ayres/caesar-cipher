def caesar_cipher(phrase, key)
    #For each letter a - z in phrase, subtitute the following. 
    #The i after /a-z/ is regex indicating case-insensitivity; it will sub for both uppercase and lowercase.
    phrase.gsub(/[a-z]/i) do |letter|
        #Determines if the original letter is uppercase or lowercase and assigns standard value (of 'a' or 'A') to modifier.
        #.ord evaluates ASCII value of character. All lowercase ASCII values are greater than uppercase.
        modifier_ord = (letter.ord >= 'a'.ord ? 'a'.ord : 'A'.ord) 
        standard_ord = letter.ord - modifier_ord
        #Use mod operator to account for rollover (Ex: Letter z with key of 2 rolls over to b)
        rollover_ord = (standard_ord + key) % 26
        (rollover_ord + modifier_ord).chr
    end
end

