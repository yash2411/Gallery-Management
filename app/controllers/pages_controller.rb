class PagesController < ApplicationController


  def about
  end

  def contact
  end

  def search
    @query=params[:query]
    if @query.blank?
      @query="Empty Search"
      @products=Product.where("lower(name) LIKE ?", "%#{@query.downcase}%")

    else
      @products=Product.where("lower(name) LIKE ?", "%#{@query.downcase}%")
      
    end
  end

end
