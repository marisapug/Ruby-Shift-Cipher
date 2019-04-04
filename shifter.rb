class Shifter
    
    def initialize(amt)
        @amount = amt
        @alphabet_down = Array("a".."z")
        @alphabet_up = Array("A".."Z")
        @dictionary = dict()
    end
    
    def amount()
        return @amount
    end

    def dictionary()
        return @dictionary
    end

    def alphabet_up()
        return @alphabet_up
    end
    
    def alphabet_down()
        return @alphabet_down
    end
    
    def dict()
        dictionary = Hash.new
        for a in self.alphabet_down()
            dictionary[a] = shift(a)
        end
        for a in self.alphabet_up()
            dictionary[a] = shift(a)
        end
        return dictionary
    end
    
    def shift(letter)
        my_letter = letter.downcase
        my_index = 0
        while @alphabet_down[my_index] != my_letter do
            my_index = my_index + 1
        end
        for i in 1..@amount
            if my_index + 1 == 26
                my_index = -1
            end
            my_index = my_index + 1
        end
        my_letter = @alphabet_down[my_index]
    end
        
end


