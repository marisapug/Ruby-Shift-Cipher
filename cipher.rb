load 'shifter.rb'

class Cipher

    class CipherValidationError < StandardError
        def message
            "The plaintext must contain only alphabet letters"
        end
    end
    
    def encode(word, distance = 1)
        s = Shifter.new(distance)
        # Check for non-alphabet string by RegEx match
        if /\d/.match(word)
            raise CipherValidationError.new()
        end
        encoded = ""
        chars = word.split("")
        for i in chars
            encoded = encoded.to_s + s.dictionary[i].to_s
        end
        return encoded
    end

    def decode(fword, distance = 1)
        s = Shifter.new(distance)
        # Check for non-alphabet string by RegEx match
        if /\d/.match(fword)
            raise CipherValidationError.new()
        end
        word = ""
        chars = fword.split("")
        for i in chars
            i = i.downcase
            word = word.to_s + s.dictionary.key(i).to_s
        end
        return word
    end

end

