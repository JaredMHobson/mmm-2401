class FoodService
  def food_search(search)
    query = search.gsub(" ", "%20")
    get_url("foods/search?query=#{query}&dataType=Branded")[:foods][0..9]
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.headers["X-Api-Key"] = Rails.application.credentials.food_data_api[:key]
    end
  end
end
