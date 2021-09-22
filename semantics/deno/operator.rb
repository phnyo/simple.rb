class Add < Struct.new(:left, :right)
  def to_s
    "#{left} + #{right}"
  end

  def inspect
    "<<#{self}>>"
  end

  def to_ruby
    "-> e { (#{left.to_ruby}).call(e) + (#{right.to_ruby}).call(e) }" 
  end
end

class Multiply < Struct.new(:left, :right)
  def to_s
    "#{left} * #{right}"
  end

  def inspect
    "<<#{self}>>"
  end
  
  def to_ruby
    "-> e { (#{left.to_ruby}).call(e) * (#{right.to_ruby}).call(e) }" 
  end
end

class LessThan < Struct.new(:left, :right)
  def to_s
      "#{left} < #{right}"
  end

  def inspect
    "<<#{self}>>"
  end
   
  def to_ruby
    "-> e { (#{left.to_ruby}).call(e) < (#{right.to_ruby}).call(e) }" 
  end
end

class MoreThan < Struct.new(:left, :right)
  def to_s
    "#{left} > #{right}"
  end

  def inspect
    "<<#{self}>>"
  end
  
  def to_ruby
    "-> e { (#{left.to_ruby}).call(e) > (#{right.to_ruby}).call(e) }" 
  end
end

