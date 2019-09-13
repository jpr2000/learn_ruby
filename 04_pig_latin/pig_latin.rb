def translate (sentence)
    newSentence = []
    sentence.split(' ').each do |word|
        vowels = ['a', 'e', 'i', 'o', 'u']

        if vowels.include?(word[0])
            word = word + "ay"

        else
            word = word.split('')
            consonantCounter = 0

            word.each_index do |i|
                if word[i] == "q"
                    i += 1
                    consonantCounter += 2                   # accounting for 'qu' counting as a consonant
                elsif !vowels.include?(word[i])
                    consonantCounter += 1
                else
                    break
                end
            end

        temp = word.shift(consonantCounter)
        word = word.join + temp.join + "ay"
        end

        newSentence << word
    end
    newSentence.join(' ')
end
