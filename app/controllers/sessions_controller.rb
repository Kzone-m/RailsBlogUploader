class SessionsController < ApplicationController
  def login
    if request.post?
      user = User.find_by(name: params[:name])
      if user
        session[:user_id] = user.id
         redirect_to posts_url
      else
        flash[:danger] = "無効なユーザーです"
        render 'login'
      end
    end
  end

  def logout
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_url
  end

  def index
  end
end
