class SAConverter

   INT_VAL = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  def initialize(roman)
    @roman = roman
  end

  def +(other)
    self.to_i + other.to_i
  end

  def -(other)
    self.to_i - other.to_i
  end

  def *(other)
    self.to_i * other.to_i
  end

  def /(other)
    self.to_i / other.to_i
  end

  # Use this method to convert roman numbers to arabic
  #
  # Don't you dare cheat on spec!!!
  def to_i
    value = 0
    @roman.split(//).each.with_index do |char, i|
      char_val = INT_VAL[char]
      next_char = (i + 1 < @roman.length) ? @roman[i + 1] : false
      if next_char && INT_VAL[next_char] > char_val
        value -= char_val
      else
        value += char_val
      end
    end
    value
  end
end
