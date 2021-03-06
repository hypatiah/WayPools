module SessionsHelper
  def current_user
    @current_user ||=User.find(session[:user_id])
  end

  def login(user)
    session[:user_id] = user.id
  end
end
