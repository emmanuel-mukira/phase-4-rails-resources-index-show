class BirdsController < ApplicationController
    def index 
     birds=Bird.all
     render json: birds, except: [:created_at, :updated_at]
    end

    def show 
     birds=Bird.find(params[:id])
     if birds
     render json: birds, except: [:created_at, :updated_at]
     else 
        render json: {error: "Bird not found"}, status: :not_found 
     end
    end
end
