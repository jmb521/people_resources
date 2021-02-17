class ResourzesController < ApplicationController
    
    def index
        @resourzes = Resourze.all
        
    end

    def show
        @resourze = Resourze.find_by_id(params[:id])
        #show address information
    end

    def new

    end

    def create

    end

    def edit
        #restrict access to current_user
    end

    def update

    end

    def destroy
        #restrict to only allow the user to change
    end


end

