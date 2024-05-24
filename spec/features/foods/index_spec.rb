require 'rails_helper'

RSpec.describe 'Foods Index Page', type: :feature do
  it 'lists all foods' do
    visit foods_path
  end
end
