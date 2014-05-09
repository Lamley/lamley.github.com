class Stack
  def initialize
    @stack= []
    @sp=0
  end
  def push(value)
    @stack[@sp]=value
    @sp+=1
  end
  def pop
    return nil if @sp==0
    @sp-=1
    @stack[@sp]
  end
end

class FixedStack<Stack
  def initialize(limit)
    super()
    @limit=limit
  end
  def push(val)
    if @sp>=@limit
      puts "over limit"
    end
    super(val)
  end
  def top
    return @stack[-1]
  end

end
=begin
stack=Stack.new
stack.push(5)
stack.push(9)
puts stack.pop()
puts stack.pop()
=end
ss=FixedStack.new(3)
ss.push(11)
ss.push(12)
puts ss.pop()
puts ss.pop()