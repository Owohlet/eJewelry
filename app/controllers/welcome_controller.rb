class WelcomeController < ApplicationController

  layout false
  
  def index
    if user_signed_in?
      redirect_to :controller=>'dashboard', :action => 'corner'
    end
  end

  def product
    render json: Product.all.pluck(:name)
  end


end
