module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
    end

    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end
    
    def user_display
        if current_user
            return current_user.name
        else
            return nil
        end
    end
    
    def user_id_display
        if current_user
            return current_user.id
        else
            return nil
        end
    end
    
    def log_out
        session.delete(:user_id)
        @current_user = nil
    end

end
