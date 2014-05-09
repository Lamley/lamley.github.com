
class Operation
  @first,@second=0
  def GetResult
    @result=0
    return result
  end
end
class AddOperation<Operation
  def initialize(a,b)
    @first=a
    @second=b
  end
  def GetResult
    return @first.to_i+@second.to_i
  end
end

class Context
  @pa=Operation.new
  def initialize(type,a,b)
    case type
      when "+"
        @pa=AddOperation.new(a,b)
      else
        @pa=AddOperation.new(1,1)
    end
  end
  def GetR
    return @pa.GetResult
  end
end
a=gets.chomp
b=2
c=2
t=Context.new(a,b,c)
puts t.GetR
