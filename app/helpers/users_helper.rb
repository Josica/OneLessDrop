module UsersHelper

  def current_user
    @current_user ||= User.find_by(id: sessions[:user_id])
  end

  def login?
    !!current_user
  end

  def require_user
    redirect_to login_path unless current_user
  end

end
