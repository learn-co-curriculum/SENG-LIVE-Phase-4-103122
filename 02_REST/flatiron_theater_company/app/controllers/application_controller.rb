class ApplicationController < ActionController::API
    def welcome
        render json: {welcome:'Hello World'}
    end 
end
