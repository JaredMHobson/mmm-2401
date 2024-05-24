require 'rails_helper'

RSpec.describe 'Food Service' do
  it 'exists' do
    service = FoodService.new

    expect(service).to be_a FoodService
  end

  describe '#instance_methods' do
    describe '#food_search' do
      it 'returns an array of food data with a max size of 10' do
        food_data = FoodService.new.food_search('sweet potatoes')

        expect(food_data.count).to eq(10)

        food_data.each do |food|
          expect(food).to have_key(:fdcId)
          expect(food[:fdcId]).to be_a Integer

          expect(food).to have_key(:description)
          expect(food[:description]).to be_a String

          expect(food).to have_key(:brandOwner)
          expect(food[:brandOwner]).to be_a String

          expect(food).to have_key(:gtinUpc)
          expect(food[:gtinUpc]).to be_a String

          expect(food).to have_key(:ingredients)
          expect(food[:ingredients]).to be_a String
        end
      end
    end
  end
end
