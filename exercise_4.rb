class A
  @@a = 1
  @a = 2
  a = 3

  # Write your code here. Use binding method. 
  @bind = binding
  def self.get_binding
    @bind
  end
end

p eval('[@@a, @a, a]', A.get_binding)   # Replace '*****' to your code

