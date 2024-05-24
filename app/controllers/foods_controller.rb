class FoodsController < ApplicationController
  def index
    if params[:q]
      @facade = FoodFacade.new(search_params: params[:q])
    end
  end
end
