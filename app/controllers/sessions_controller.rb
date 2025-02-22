class SessionsController < ApplicationController
    def new
    end

    def create
        if !params[:name] || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        if session[:name] = params[:name]
            session.delete :name
        else
            redirect_to '/'
        end
    end
end
