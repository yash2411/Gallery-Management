class PagesController < ApplicationController


  def about
  end

  def contact
  end

  def search
    @query=params[:query].strip
    if @query.blank?
      search="                 "
      @products=Product.where('name LIKE :query OR description LIKE :query', query: "%#{search}%")
    else
      @products=Product.where('name LIKE :query OR description LIKE :query', query: "%#{@query}%")
      
    end
  end

end
