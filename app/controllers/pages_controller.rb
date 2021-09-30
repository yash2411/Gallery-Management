class PagesController < ApplicationController


  def about
  end

  def contact
  end

  def search
    @query=params[:query].strip
    if @query.blank?
      search="                 "
      @products=Product.where('lower(name) LIKE :query OR lower(description) LIKE :query', query: "%#{search}%")
    else
      @products=Product.where('lower(name) LIKE :query OR lower(description) LIKE :query', query: "%#{@query}%")
      
    end
  end

end
