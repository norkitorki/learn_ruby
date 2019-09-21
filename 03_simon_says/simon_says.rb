def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, times = 2)
    (string.split * times).join(" ")
end

def start_of_word(string, position)
    string[0..(position - 1)]
end

def first_word(string)
    string.split.first
end

def titleize(string)
    little_words = ["and", "of", "is", "an", "for", "the", "over", "other"]
    string.split.map.with_index do |word,index| 
        !index.zero? && little_words.include?(word) ? word.downcase : word.capitalize
    end.join(" ")
end