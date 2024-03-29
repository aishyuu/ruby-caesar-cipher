def caesar_cipher(str, shift)
    response = ""
    str.each_byte do |letter|
        if letter >= 65 && letter <= 90
            letter += shift
            if letter > 90
                letter -= 25
            end
        elsif letter >= 97 && letter <= 122
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