class StocksController < ApplicationController
    
    
    def search
        
        if params[:stock].present?
        
            @stock = Stock.new_from_lookup(params[:stock])
            
            if @stock == nil 
                
                flash.now[:danger] = "That symbol does not exist"
                render partial: 'users/results'
                
            else
            
                render partial: 'users/results'
            
            end
        
        else
            
            flash.now[:danger]= "Please enter a symbol"
            render partial: 'users/results'
        
        end
        
    end
    
end