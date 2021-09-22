class Variable < Struct.new(:name)
  def to_s
    name.to_s
  end

  def inspect
    "<<#{self}>>"
  end

  def evaluate(environment)
    environment[name]
  end
end

class DoNothing
  def to_s
    'do_nothing'
  end
  
  def inspect
    "<<#{self}>>"
  end

  def evaluate(environment)
    environment
  end
end


