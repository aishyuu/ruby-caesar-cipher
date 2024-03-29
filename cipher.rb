def caesar_cipher(str, shift)
    response = ""
    str.each_byte do |letter|
        if letter.between?(65, 90)
            letter += shift
            if letter > 90
                letter -= 25
            end
        elsif letter.between?(97,122)
            letter += shift
            if letter > 122
                letter -= 25
            end
        end
        response << letter.chr
    end
    return response
end

puts caesar_cipher("What a string!", 5)