require 'rspec'
require './lib/dish'

describe Dish do
  describe '#initialize' do
    it 'is a dish' do

      dish = Dish.new("Couscous Salad", :appetizer)
      expect(dish).to be_a Dish
    end
  end

  it 'can read the name' do

    dish = Dish.new("Couscous Salad", :appetizer)
    expect(dish.name).to eq "Couscous Salad"
    expect(dish.category).to eq :appetizer
  end
end
