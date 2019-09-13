def echo (phrase)
    phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase, times=2)
    (phrase + ' ') * (times - 1) + phrase
end

def start_of_word(word, letters)
    word[0, letters]
end

def first_word(sentence)
    sentence.split(' ')[0]
end

def titleize(title)
    newTitle = []
    littleWords = ['the', 'a', 'over', 'and', 'an']
    title = title.split(' ')
    for i in 0..title.length-1 do
        word = title[i]
        if (i == 0 or !littleWords.include?(word))
            newTitle << word.capitalize
        else
            newTitle << word
        end
    end
    newTitle.join(' ')
end