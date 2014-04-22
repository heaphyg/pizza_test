require 'rspec'
require_relative 'pizza'

#spec
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

end
