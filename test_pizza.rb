require 'rspec'
require_relative 'pizza'

#spec
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
end

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

  context ".required_bake_time" do
    it "returns the correct total bake time" do
      expect(pizza.required_bake_time).to eql(1000)
    end
  end

end
