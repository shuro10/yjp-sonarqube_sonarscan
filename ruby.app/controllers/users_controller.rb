class UsersController < ApplicationController
  #GET /users/:id
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new #Userモデル通じて、dbに入れるため
  end
  #POST /users
  def create
    @user = User.new(user_params)
    if @user.save #saveメソッドは、成功すればtrueを、失敗すればfalseを返す
      flash[:success] = "Welocome to the GSD_App!"
      redirect_to @user #redirect_to user_url(@user)#GETリクエスト　redirect_to user_url(@user)と等価
      #binding.pry
    else
      flash.now[:danger] = "User registration failed."
      #nowにするとflashのbugが解消.先にbugを再現するspec書くこと
      render "new"
    end
  end

  private #上下で性質が変わる(インデントは入れても入れなくても)
    def user_params #StrongParams
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end
end
