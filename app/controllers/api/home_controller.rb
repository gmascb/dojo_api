module Api
    class HomeController < ApplicationController
    
        def index
            render json: { message: "Hello World!!!" }
        end
    
    end
end