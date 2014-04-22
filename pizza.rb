class Pizza
  attr_reader :name, :required_bake_time, :time_baked, :toppings

  def initialize(name)
    @name = name
    @required_bake_time = 1000
    @time_baked = 0
    @toppings = []
  end

end

class Topping
  attr_reader :type, :bake_time

  def initialize(type, bake_time)
    @type = type
    @bake_time = bake_time
  end

end
