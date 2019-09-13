class Book
    attr_reader :title

    def title=(title)
        words = title.split(' ')
        littleWords = ['a', 'an', 'and', 'in', 'of', 'the']
        words = [words[0].capitalize] + words[1..-1].map do |word|
            if littleWords.include?(word)
                word
            else
                word.capitalize
            end
        end
        @title = words.join(' ')
    end
end
