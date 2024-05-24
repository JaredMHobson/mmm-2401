require 'rails_helper'

RSpec.describe 'Food' do
  before(:each) do
    food_data = {
      fdcid: '1412412',
      description: 'Food Description',
      brand: 'Food Brand',
      gtinupc: '2353253',
      ingredients: 'Food Ingredients'
    }

    @food = Food.new(food_data)
  end

  it 'exists and has attributes' do
    expect(@food).to be_a Food
    expect(@food.fdcid).to eq('1412412')
    expect(@food.description).to eq('Food Description')
    expect(@food.brand).to eq('Food Brand')
    expect(@food.gtinupc).to eq('2353253')
    expect(@food.ingredients).to eq('Food Ingredients')
  end
end
