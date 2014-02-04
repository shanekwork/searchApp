require 'csv'
class ProductsController < ApplicationController
	
  def index
  	@products = Product.search(params[:search])
  end

  def new
  end

  def import
  	Product.import(params[:file])
  	redirect_to root_url, notice: "Products Imported"
  end

end
