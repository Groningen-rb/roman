class Bar
  def initialize(roman)
  end

  def +(other_object)
    self.to_i + other_object.to_i
  end

  def to_i
    8
  end
end

class Foo
  def initialize(roman)
  end

  def +(other_object)
    self.to_i + other_object.to_i
  end

  def to_i
    5
  end
end
