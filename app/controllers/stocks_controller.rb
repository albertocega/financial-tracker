class StocksController < ApplicationController
    
    
  def search
    @user = current_user
    @user_stocks =current_user.stocks
    if params[:stock].blank? 
      flash.now[:danger] = "You have entered an empty search string"
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "You have entered an incorrect symbol" unless @stock
    end
    #render partial: 'users/result'
    render 'users/my_portfolio'
    

  end
    
end