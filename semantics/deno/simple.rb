require_relative './data'
require_relative './operator'
require_relative './wrapper'
require_relative './syntax'

proc = eval(Number.new(5).to_ruby)
puts proc.call({})

proc = eval(Boolean.new(false).to_ruby)
puts proc.call({})

expression = Variable.new(:x)
proc = eval(expression.to_ruby)
puts proc.call({ x: 7 })

proc = Add.new(Variable.new(:x), Number.new(4)).to_ruby
puts eval(proc).call({ x: 3 })

statement = 
  While.new(
    LessThan.new(Variable.new(:x), Number.new(5)),
    Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3))),
  )
puts statement.to_ruby
puts eval(statement.to_ruby).call({ x: 1 })
