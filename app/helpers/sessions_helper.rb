module SessionsHelper
  private
    def logged_in?
      User.find_by(id: session[:user_id])
    end

    def current_user
      if user_id = session[:user_id]
        @user = User.find_by(id: user_id)
      end
    end
end
