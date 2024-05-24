require 'rails_helper'

RSpec.describe 'Foods Index Page', type: :feature do
  it 'can search for foods that contain the ingredient you searched on the root_path and then redirect you to the foods_path where you will see a max of 10 foods and their GTIN/UPC code, description, brand owner and ingredients' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'

    expect(current_path).to eq(foods_path)

    expect(page).to have_css('.food_info', count: 10)
    expect(page).to have_content("GTIN/UPC Code: 832298010009")
    expect(page).to have_content("Description: SWEET POTATOES")
    expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
    expect(page).to have_content("Ingredients: ")

    expect(page).to have_content("GTIN/UPC Code: 070560951975")
    expect(page).to have_content("Description: SWEET POTATOES")
    expect(page).to have_content("Brand Owner: The Pictsweet Company")
    expect(page).to have_content("Ingredients: SWEET POTATOES")
  end
end
