class Food
  attr_reader :fdcid,
              :description,
              :brand,
              :gtinupc,
              :ingredients

  def initialize(attributes)
    @fdcid = attributes[:fdcid]
    @description = attributes[:description]
    @brand = attributes[:brand]
    @gtinupc = attributes[:gtinupc]
    @ingredients = attributes[:ingredients]
  end
end
