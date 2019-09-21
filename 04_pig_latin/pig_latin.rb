def translate(string)
    string.split(/([^\w'])/i).map do |word|
        if word.start_with?(/[A-Z]/)
            capitalized = true
            word.sub!(/^[A-Z]/, word[0].downcase)
        else capitalized = false
        end
        if /\w/.match(word)
            if word.start_with?(/^[aeiou]/i) or word[/[aeiou]/i].nil?
                word = "#{word}ay"
            elsif word.include?("qu")
                word = "#{word[word.index(/[qu]/i)+2..] +  word[0..word.index(/[aeiou]/i)]}ay"
            else 
                word = "#{word[word.index(/[aeiou]/i)..] + word[0...word.index(/[aeiou]/i)]}ay"
            end
            capitalized ? word.sub(/^[A-Z]/i, word[0].upcase) : word
        else word
        end
    end.join
end