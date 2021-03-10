class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to "/"
    end

    def omniauth
        

        @user = User.find_with_omniauth(auth)
        if @user
            session[:user_id] = @user.id
            redirect_to resourzes_path
        else
            redirect_to login_path
        end
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end
