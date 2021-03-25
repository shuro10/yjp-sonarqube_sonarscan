module SessionsHelper
  #同じログイン手法を他で使い回すためhelperに置く
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
  #   @current_user = User.find_by(id: session[:user_id])
  # else
  #   @current_user
      @current_user ||= User.find_by(id: session[:user_id])#@current_userに何も代入されていないときだけfind_by呼出し実行
    end
  end

  def logged_in? #コントローラではなくHTML(ERB)から実行されるメソッド
    !current_user.nil? #ログインしていればtrue,それ以外はfalseを返す
  end
end
