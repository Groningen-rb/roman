class TeamHenkMarielleHester

  ROM_TO_ARABIC = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
  ORDER = ROM_TO_ARABIC.keys

  def initialize(roman)
    @roman = roman
  end

  [:+, :-, :*, :**, :/, :%].each do |op|
    define_method op do |other|
      self.to_i.send(op, other.to_i)
    end
  end

  def to_i
    @roman.each_char.with_index.inject(0) do |total, (char, i)|
      if i+1 < @roman.length && ORDER.index(char) < ORDER.index(@roman[i+1])
        total -= ROM_TO_ARABIC[char]
      else
        total += ROM_TO_ARABIC[char]
      end
    end
  end
end
