class PagesController < ApplicationController


  def about
  end

  def contact
  end

  def search
    @query=params[:query].strip
    if @query.blank?
      @query="Empty Search"
      @products=current_user.products.where("lower(name) LIKE ?", "%#{@query.downcase}%")

    else
      @products=current_user.products.where("lower(name) LIKE ?", "%#{@query.downcase}%")
      
    end
  end

end
