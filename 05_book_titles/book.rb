class Book
    attr_writer:title

    def title
        @title.split.map.with_index do |word,index|
            (word[/\b(a|an|the|and|of|in)\b/i].nil? or index == 0) ? word.capitalize : word
        end.join(" ")
    end
end