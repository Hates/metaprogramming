animal = 'dog'

# define singleton speak() method

#animal.speak  #=> 'Dog says Woof!'

# 1. def animal.speak
def animal.speak
  puts "1. Dog says Woof!"
end
animal.speak

# 2. singleton class
animal = 'dog'
class << animal
  def speak
    puts "2. Dog says Woof!"
  end
end
animal.speak
animal = 'dog'

# 3. define_method
animal = 'dog'
animal.class.send(:define_method, :speak) do
  puts "3. Dog says Woof!"
end
animal.speak

# 4. instance_eval
animal = 'dog'
animal.instance_eval {
  def speak
    puts "4. Dog says Woof!"
  end
}
animal.speak

# 5. module, extend
animal = 'dog'
module Woof
  def speak
    puts "5. Dog says Woof!"
  end
end
animal.extend(Woof)
animal.speak

# 6. module, include
animal = 'dog'
module Woof
  def speak
    puts "6. Dog says Woof!"
  end
end
animal.class.class_eval { include(Woof) }
animal.speak

# 7. send, lambda
animal = 'dog'
animal.class.send(:define_method, :speak, lambda { puts "7. Dog says Woof!"; })
animal.speak


