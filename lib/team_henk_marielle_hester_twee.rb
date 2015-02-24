class TeamHenkMarielleHesterTwee

  ROM_TO_ARABIC = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
  ORDER = ROM_TO_ARABIC.keys

  ROMAN_OPTIONS = [
    [1, 'I'],
    [2, 'II'],
    [3, 'III'],
    [4, 'IV'],
    [5, 'V'],
    [6, 'VI'],
    [7, 'VII'],
    [8, 'VIII'],
    [9, 'IX'],
    [10,  'X'],
    [11,  'XI'],
    [12,  'XII'],
    [13,  'XIII'],
    [14,  'XIV'],
    [15,  'XV'],
    [16,  'XVI'],
    [17,  'XVII'],
    [18,  'XVIII'],
    [19,  'XIX'],
    [20,  'XX'],
    [30,  'XXX'],
    [40,  'XL'],
    [50,  'L'],
    [60,  'LX'],
    [70,  'LXX'],
    [80,  'LXXX'],
    [90,  'XC'],
    [100, 'C'],
    [200, 'CC'],
    [300, 'CCC'],
    [400, 'CD'],
    [500, 'D'],
    [600, 'DC'],
    [700, 'DCC'],
    [800, 'DCCC'],
    [900, 'CM']
  ]

  def initialize(roman, mode = 'arabic')
    @roman = roman
  end

  [:+, :-, :*, :**, :/, :%].each do |op|
    define_method op do |other|
      res = self.to_i.send(op, other.to_i)
      mode == 'arabic' ? res : self.class.to_roman(res)
    end
  end

  def self.to_roman(res)
    roman = ''
    while(res >= 1000) do
      roman += 'M'
      res -= 1000
    end
    ROMAN_OPTIONS.reverse.each do |val, chars|
      if res >= val
        roman += chars
        res -= val
      end
    end
    roman
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
