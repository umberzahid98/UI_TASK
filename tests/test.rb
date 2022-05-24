class Test
  @shared

  def value
    @shared
  end

  def value=(value)
    @shared = value
  end
end

class AnotherTest < Test; end

t = Test.new
puts "t.value is #{t.value}" # 1
t.value = 2
puts "t.value is #{t.value}" # 2

x = Test.new
puts "x.value is #{x.value}" # 2

a = AnotherTest.new
puts "a.value is #{a.value}" # 2
a.value = 3
puts "a.value is #{a.value}" # 3
puts "t.value is #{t.value}" # 3
puts "x.value is #{x.value}" # 3
