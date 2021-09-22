class Add < Struct.new(:left, :right)
  def to_s
    "#{left} + #{right}"
  end

  def inspect
    "<<#{self}>>"
  end
  
  def evaluate(environment)
    Number.new(left.evaluate(environment).value + right.evaluate(environment).value)
  end
end

class Multiply < Struct.new(:left, :right)
  def to_s
    "#{left} * #{right}"
  end

  def inspect
    "<<#{self}>>"
  end
  
  def evaluate(environment)
    Number.new(left.evaluate(environment).value * right.evaluate(environment).value)
  end
end

class LessThan < Struct.new(:left, :right)
  def to_s
    "#{left} < #{right}"
  end

  def inspect
    "<<#{self}>>"
  end
  
  def evaluate(environment)
    Boolean.new(left.evaluate(environment).value < right.evaluate(environment).value)
  end
end

class MoreThan < Struct.new(:left, :right)
  def to_s
    "#{left} > #{right}"
  end

  def inspect
    "<<#{self}>>"
  end
  
  def evaluate(environment)
    Boolean.new(left.evaluate(environment).value > right.evaluate(environment).value)
  end
end
