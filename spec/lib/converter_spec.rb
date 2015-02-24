describe Converter do
  [
    [1,    'I'],
    [2,    'II'],
    [3,    'III'],
    [4,    'IV'],
    [5,    'V'],
    [6,    'VI'],
    [7,    'VII'],
    [8,    'VIII'],
    [9,    'IX'],
    [10,   'X'],
    [19,   'XIX'],
    [99,   'XCIX'],
    [42,   'XLII'],
    [151,  'CLI'],
    [509,  'DIX'],
    [88,   'LXXXVIII'],
    [54,   'LIV'],
    [2015, 'MMXV'],
    [1986, 'MCMLXXXVI'],
    [12,   'XII'],
    [69,   'LXIX'],
    [9476, 'MMMMMMMMMCDLXXVI'],
    [101,  'CI'],
    [1009, 'MIX'],
<<<<<<< HEAD
    [1999, 'MCMXCIX']
=======
    [1999, 'MCMXCIX'],

>>>>>>> e0176655d440216771dbb7ed6ceb1b944877703e
  ].each do |conversion|

    arabic = conversion[0]
    roman  = conversion[1]

    it "converts #{roman} to #{arabic}" do
      expect(described_class.convert(roman)).to eq arabic
    end
  end
end
