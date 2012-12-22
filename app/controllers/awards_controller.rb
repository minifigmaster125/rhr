class AwardsController < ApplicationController

    def new
        @award = Award.new
    end

    def create
        @year = Year.find(params[:year_id]
        @award = @year.awards.new(params[:award])
        if  @award.save	
            redirect to year_show_path
        else
            render "new"
        end 
    end

end
