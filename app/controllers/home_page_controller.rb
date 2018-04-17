class HomePageController < ApplicationController
  def home
    @categories = ProdCategorie.all    
  end
end
