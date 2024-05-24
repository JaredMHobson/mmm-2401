require 'rails_helper'

RSpec.describe 'Food Facade' do
  it 'exists and creates a Food Service on intialization' do
    facade = FoodFacade.new

    expect(facade).to be_a FoodFacade
    expect(facade.instance_variable_get(:@service)).to be_a FoodService
  end

  describe '#instance_methods' do
    describe '#searched_foods' do
      it 'takes food data from the service method food_search and returns an array of a max of 10 food poros' do
        facade = FoodFacade.new(search_params: 'sweet potatoes')

        foods = facade.searched_foods

        expect(foods.count).to eq(10)

        foods.each do |food|
          expect(food).to be_a Food
        end
      end
    end
  end
end
