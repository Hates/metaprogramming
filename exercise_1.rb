klass_a = class A
  def initialize
    @a = 11
    @@a = 22
    a = 33
  end
  @a = 1
  @@a = 2
  a = 3
end

puts A.instance_variable_get "@a"
puts A.send(:class_variable_get, "@@a")
puts klass_a

puts A.new.instance_variable_get "@a"
puts A.send(:class_variable_get, "@@a")
puts A.new.send(:initialize)
