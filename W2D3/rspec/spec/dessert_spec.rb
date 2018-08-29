require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:creme_brulee) {Dessert.new("Creme Brulee", 12, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(creme_brulee.type).to eq("Creme Brulee")
    end

    it "sets a quantity" do
      expect(creme_brulee.quantity).to eq(12)
    end

    it "starts ingredients as an empty array" do
      expect(creme_brulee.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("Creme Brulee", '12', "Tony")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      creme_brulee.add_ingredient("eggs")
      expect(creme_brulee.ingredients.length).to eq(1)
      expect(creme_brulee.ingredients).to include("eggs")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ['egg', 'fire', 'sugar']

      ingredients.each do |ingredient|
        creme_brulee.add_ingredient(ingredient)
      end

      creme_brulee.mix!

      expect(creme_brulee.ingredients).not_to eq(ingredients)
      expect(creme_brulee.ingredients.sort).to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      creme_brulee.eat(4)
      expect(creme_brulee.quantity).to eq(8)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {creme_brulee.eat(20)}.to raise_error()
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:name).and_return("Tony")

      expect do
        creme_brulee.serve.to
        include("Chef Tony the Great Baker")
      end
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(creme_brulee)
      creme_brulee.make_more
    end
  end
end
