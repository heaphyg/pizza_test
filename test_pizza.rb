require 'rspec'
require_relative 'pizza'

######################### TOPPING TESTS ###########################

describe Topping do
  let(:topping) { Topping.new("pepperoni", 200) }
  context "#initialize" do
    it "creates a Topping object" do
      expect(topping).to be_an_instance_of Topping
    end
    it "requires two paramters" do
      expect {Topping.new}.to raise_error(ArgumentError)
    end
  end

  context "type" do
    it "should return a string" do
      expect(topping.type).to be_a String
    end
    it "should return the type of topping" do
      expect(topping.type).to eq("pepperoni")
    end
  end

  context "#bake_time" do
    it "should return an integer" do
      expect(topping.bake_time).to be_a Integer
    end
    it "should return the topping bake time" do
      expect(topping.bake_time).to eq(200)
    end
  end
end


########################## PIZZA TESTS #####################################


describe Pizza do
  let(:pizza) { Pizza.new("Ham") }

  context "#initialize" do
    it "creates a Pizza object" do
      expect(pizza).to be_an_instance_of Pizza
    end

    it "requires one parameter" do
      expect { Pizza.new }.to raise_error(ArgumentError)
    end
  end

  context "#name" do
    it "should return a string" do
      expect(pizza.name).to be_a String
    end
  end

  context "#time_baked" do
    before do
      pizza = Pizza.new("Chocolate")
    end
    it "should default to 0" do
      expect(pizza.time_baked).to eq(0)
    end
  end

  context "#toppings" do
    it "should return the topping on the pizza" do
      expect(pizza.toppings).to be_a Array
    end
  end


end
