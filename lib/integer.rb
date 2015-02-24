class Converter

    def initialize(roman)
        @roman = roman

    end


    def method_missing(method, other)
        to_i.send(method,other.to_i)
    end



    def to_i
        total = 0
        previousvalue = 0
        @roman.chars.reverse.each do |character|
            if value(character) >= previousvalue
                total += value(character)
            else
                total -= value(character)
            end
            previousvalue = value(character)
        end
        return total
    end

    def value(character)
        {
            "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000

        }[character]

    end





  def self.convert(roman)
    new(roman).to_i
  end
end
