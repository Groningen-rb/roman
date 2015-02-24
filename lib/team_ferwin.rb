class TeamFerwin

    ROMAN_NUMERALS = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
    }
    # Use this method to convert roman numbers to arabic
    #
    # Don't you dare cheat on spec!!!
    def initialize(roman)
      @roman_numeral_tokens = roman
    end

    def to_i
      last = nil
      @roman_numeral_tokens.reverse.chars.reduce(0) do |sum, token|
        digit = arabic(token)
        if last && last > digit
          sum -= digit
        else
          sum += digit
        end
        last = digit

        sum
      end
    end

    def to_roman(num)

    end

    def +(other)
      self.to_i + other.to_i
    end

    def -(other)
      self.to_i - other.to_i
    end

    def %(other)
      self.to_i % other.to_i
    end

    def **(other)
      self.to_i ** other.to_i
    end

    def /(other)
      self.to_i.to_f / other.to_i.to_f
    end

    def *(other)
      self.to_i * other.to_i
    end

    private
      def arabic(token)
        ROMAN_NUMERALS[token]
      end
end
