require_relative './data'
require_relative './operator'
require_relative './syntax'
require_relative './wrapper'

puts Number.new(23).evaluate({})
puts Variable.new(:x).evaluate({ x: Number.new(23) })
puts Add.new(Variable.new(:x), Variable.new(:y)).evaluate({ x: Number.new(2), y: Number.new(4)})
puts MoreThan.new(Number.new(4), Number.new(3)).evaluate({})
puts LessThan.new(
  Add.new(Variable.new(:x), Number.new(2)),
  Variable.new(:y)
).evaluate({ x: Number.new(2), y: Number.new(5)})
puts Sequence.new(
  Assign.new(:x, Add.new(Number.new(1), Number.new(1))),
  Assign.new(:y, Add.new(Variable.new(:x), Number.new(3))),
).evaluate({})
puts While.new(
  LessThan.new(Variable.new(:x), Number.new(5)),
  Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3)))
).evaluate({ x: Number.new(1)})
