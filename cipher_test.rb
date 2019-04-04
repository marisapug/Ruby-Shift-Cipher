require 'minitest/autorun'
load 'cipher.rb'

class CipherTest < Minitest::Test
    
    def setup
        @Cipher = Cipher.new
    end
    
    def test_encode_letter_with_default_shift_distance
        # skip
        
        plaintext = 'a'
        ciphertext = 'b'
        assert_equal(ciphertext, @Cipher.encode(plaintext))
    end
    
    def test_decode_letter_with_default_shift_distance
        # skip
        
        plaintext = 'b'
        ciphertext = 'a'
        assert_equal(ciphertext, @Cipher.decode(plaintext))
    end
    
    def test_encode_wraps_z_to_a
        # skip
        
        plaintext = 'z'
        ciphertext = 'a'
        assert_equal(ciphertext, @Cipher.encode(plaintext))
    end
    
    def test_decode_wraps_a_to_z
        # skip
        
        plaintext = 'a'
        ciphertext = 'z'
        assert_equal(ciphertext, @Cipher.decode(plaintext))
    end
    
    def test_encode_string_with_default_shift_distance
        # skip
        
        plaintext = 'wxyzabcd'
        ciphertext = 'xyzabcde'
        assert_equal(ciphertext, @Cipher.encode(plaintext))
    end
    
    def test_decode_string_with_default_shift_distance
        # skip
        
        plaintext = 'xyzabcde'
        ciphertext = 'wxyzabcd'
        assert_equal(ciphertext, @Cipher.decode(plaintext))
    end
    
    def test_encode_with_10_shift_distance
        # skip
        
        plaintext = 'wxyzabcd'
        ciphertext = 'ghijklmn'
        assert_equal(ciphertext, @Cipher.encode(plaintext, 10))
    end
    
    def test_decode_with_10_shift_distance
        # skip
        
        plaintext = 'ghijklmn'
        ciphertext = 'wxyzabcd'
        assert_equal(ciphertext, @Cipher.decode(plaintext, 10))
    end
    
    def test_encode_with_26_shift_distance
        # skip
        
        plaintext = 'abcdefghij'
        ciphertext = 'abcdefghij'
        assert_equal(ciphertext, @Cipher.encode(plaintext, 26))
    end
    
    def test_decode_with_26_shift_distance
        # skip
        
        plaintext = 'klmnopqrst'
        ciphertext = 'klmnopqrst'
        assert_equal(ciphertext, @Cipher.decode(plaintext, 26))
    end
    
    def test_encode_with_27_shift_distance
        # skip
        
        plaintext = 'wxyzabcd'
        ciphertext = 'xyzabcde'
        assert_equal(ciphertext, @Cipher.encode(plaintext, 27))
    end
    
    def test_decode_with_27_shift_distance
        # skip
        
        plaintext = 'xyzabcde'
        ciphertext = 'wxyzabcd'
        assert_equal(ciphertext, @Cipher.decode(plaintext, 27))
    end
    
    def test_encode_always_returns_downcase_string
        # skip
        
        plaintext = 'AbCdEfGhIj'
        ciphertext = 'bcdefghijk'
        assert_equal(ciphertext, @Cipher.encode(plaintext))
    end
    
    def test_decode_always_returns_downcase_string
        # skip
        
        plaintext = 'BcDeFgHiJk'
        ciphertext = 'abcdefghij'
        assert_equal(ciphertext, @Cipher.decode(plaintext))
    end
    
    def test_encode_raise_error_if_non_letter_characters
        # skip
        
        plaintext = 'az4'
        assert_raises Cipher::CipherValidationError do
            @Cipher.encode(plaintext)
        end
    end
    
    def test_decode_raise_error_if_non_letter_characters
        # skip
        
        plaintext = 'za4'
        assert_raises Cipher::CipherValidationError do
            @Cipher.decode(plaintext)
        end
    end
end
