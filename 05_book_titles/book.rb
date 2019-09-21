class Book
    attr_writer:title

    def title
        @title.split.map.with_index do |word,index|
            (word[/(\ba\b|\ban\b|\bthe\b|\band\b|\bof\b|\bin\b)/i].nil? or index == 0) ? word.capitalize : word
        end.join(" ")
    end
end