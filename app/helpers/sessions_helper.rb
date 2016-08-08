module SessionsHelper
  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def login(user)
    session[:user_id] = user.id
  end

  def logged_in?
    return true if session[:user_id]
  end
end
