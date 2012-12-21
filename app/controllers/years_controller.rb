class YearsController < ApplicationController
    def new
        @year = Year.new
    end

    def create
        @year = Year.new(params[:year])
        if @year.save
            flash[:success] = "New Team Year created."
            redirect_to new_year_path
        else
            render "new"
        end
    end 
end
