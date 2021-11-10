require 'rspec'
require './lib/dish'
require './lib/potluck'

describe Dish do
  describe '#initialize' do
    it 'is a potluck' do

      potluck = Potluck.new("7-13-18")
      expect(potluck).to be_a Potluck
    end
  end

  it 'can read the date' do

    potluck = Potluck.new("7-13-18")
    expect(potluck.date).to eq "7-13-18"
  end

  it 'can read the date' do
    potluck = Potluck.new("7-13-18")

    expect(potluck.date).to eq "7-13-18"
    expect(potluck.dishes).to eq []
  end

  it 'can read the appetizers' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.date).to eq "7-13-18"
    expect(potluck.dishes).to eq [couscous_salad, cocktail_meatballs]
  end

  it "can sort dishes" do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    bean_dip = Dish.new("Bean Dip", :appetizer)

    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    candy_salad = Dish.new("Candy Salad", :dessert)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(candy_salad)
    potluck.add_dish(bean_dip)

    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza, bean_dip])
    expect(potluck.get_all_from_category(:appetizer).first).to eq(couscous_salad)
    expect(potluck.get_all_from_category(:appetizer).first.name). to eq("Couscous Salad")
  end
end
