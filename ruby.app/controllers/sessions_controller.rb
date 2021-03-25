class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email:params[:session][:email].downcase)
    if user&&user.authenticate(params[:session][:password])
      # ユーザログイン後,ユーザ情報のページにリダイレクト
      log_in user #sessions_helper.rbに書いてある
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination' # flashからflash.nowにしてspce通す
      render "new"
    end
  end

  def destroy
  end
end
