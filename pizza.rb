class Pizza
  attr_reader :name, :required_bake_time

  def initialize(name)
    @name = name
    @required_bake_time = 1000
  end

end

class Topping
  attr_reader :type, :qty

  def initialize(type, qty)
    @type = type
    @qty = qty
  end

end
