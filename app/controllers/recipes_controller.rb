class RecipesController < ApplicationController
  
  def index
  	@to_search = params[:search] || "chocolate"
  	@page = params[:page] || 1
  	@page = 1 if @page.to_i <= 0 
  	@result = Recipe.for @to_search, @page
  end
end
