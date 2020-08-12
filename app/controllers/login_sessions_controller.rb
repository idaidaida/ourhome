class LoginSessionsController < ApplicationController

  def new
    @login_form = LoginForm.new
  end

  def create
    @login_form = Account.find_by(name: create_params[:name])
    if @login_form && @login_form.authenticate(create_params[:password])
      # ログイン
      flash[:success] = 'ログイン成功しました'
      redirect_to root_url
    else
      render "new"
    end
  end

  def destroy

  end

  private 
    def create_params
      params.require(:login_form).permit(:name,:password)
    end
end
