class SessionsController < ApplicationController
    include SessionsHelper
    
    def new
    end
    
    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            log_in user
            redirect_to user
        else
            flash[:danger] = 'Invalid email/password combination'
            render 'new'
        end
    end
    
    def destroy
        log_out
        redirect_to root_url
    end
    
    def googleAuth
        # Get access tokens from the google server
        access_token = request.env["omniauth.auth"]
        user = User.from_omniauth(access_token)
        login_url(user)
        # Access_token is used to authenticate request made from the rails application to the google server
        # user.google_token = access_token.credentials.token
        # Refresh_token to request new access_token
        # Note: Refresh_token is only sent once during the first request
        refresh_token = access_token.credentials.refresh_token
        user.google_refresh_token = refresh_token if refresh_token.present?
        user.save
        redirect_to user
    end
    
end
