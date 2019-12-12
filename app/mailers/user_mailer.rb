class UserMailer < ApplicationMailer
    include SessionsHelper
    default from: 'thoeller1099@gmail.com'
    
    def watchlist_email
        @user = current_user
        @players = Player.where(user_id: current_user.id)
        mail(to: @user.email, subject: 'Watchlist Statistics')
    end
        
end