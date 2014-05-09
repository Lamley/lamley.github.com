class Person
  private
  @m_strName
  public
  def initialize(str)
    @m_strName=str
  end

  def show
    puts @m_strName
  end
end

class Finery<Person
  def initialize
  end

  protected
  @m_component=Person
  public
  component=Person
  def decorator(component)
    @m_component=component
  end
  def show
    @m_component.show
  end
end

class TS<Finery
  def show
    puts 'Tshirts'
    @m_component.show
  end
end
class BT<Finery
  def show
    puts 'BT'
    @m_component.show
  end
end

p=Person.new('aa')
ts=TS.new
bt=BT.new
bt.decorator(p)
ts.decorator(bt)
ts.show