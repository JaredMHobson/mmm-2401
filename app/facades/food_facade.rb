class FoodFacade

  def initialize(search_params: nil)
    @search_params = search_params
    @service = FoodService.new
  end

  def searched_foods
    food_data = @service.food_search(@search_params)

    food_data.map do |data|
      Food.new(format_food_data(data))
    end
  end

  private

  def format_food_data(data)
    {
      fdcid: data[:fdcId],
      description: data[:description],
      brand: data[:brandOwner],
      gtinupc: data[:gtinUpc],
      ingredients: data[:ingredients]
    }
  end
end
