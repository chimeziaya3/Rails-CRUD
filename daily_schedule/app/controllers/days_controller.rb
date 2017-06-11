class DaysController < ApplicationController
    def index
        @days = Days.all
    end
    
    def show
        @day = Days.find(params[:id])
    end

    def new
        @day = Day.new
    end
    
    def create
        @day = Day.new(day_params)
        if @day.save
            redirect_to './days'
        else
            render :new
        end
        
        private
        # Strong Paraters (DOn't trust user input')
        def day_params
            params.require(:day).permit(:name, :date_of_birth)
        end
        
    
end
