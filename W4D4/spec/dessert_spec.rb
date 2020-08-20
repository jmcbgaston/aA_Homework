require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:pizza) {Dessert.new("pizza", 4, "Joe")}

  describe "#initialize" do
    it "sets a type" do
      expect(pizza.type).to eq("pizza")
    end
    it "sets a quantity" do
      expect(pizza.quantity).to eq(4)
    end
    it "starts ingredients as an empty array" do 
      expect(pizza.ingredients).to be_empty
    end
    it "raises an argument error when given a non-integer quantity" do
      expect{ Desser.new("pizza", "hi", "Joe") }.to raise_error("Quantity must be a number")
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(pizza.add_ingredient).to_not include('sausage')
      pizza.add_ingredient('sausage')
      expect(pizza.add_ingredient).to include('sausage')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(pizza.ingredients).to eq(['flour', 'salt', 'water'])
      pizza.mix!
      expect(pizza.ingredients).to be(['flour', 'water', 'salt'])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(pizza.quantity).to be(4)
      pizza.eat
      expect(pizza.quantity).to eq(3)
    end

    it "raises an error if the amount is greater than the quantity" do
    expect(pizza.quantity = 5).to raise_error "That's not physics"
    end 
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(pizza.chef).to be("joe")
      pizza.serve
      expect(pizza.chef).to be('Joe')
    end
  end

  describe "#make_more" do
    subject(chef) {Chef.new('Andreas')}
    it "calls bake on the dessert's chef with the dessert passed in" do
    end
  end
end
