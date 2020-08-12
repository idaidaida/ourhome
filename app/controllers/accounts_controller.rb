class AccountsController < ApplicationController
  
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(create_params)
    if @account && @account.save
      flash[:success] = "会員登録を行いました"
      redirect_to root_url
    else
      render "new"
    end
  end

  private
    def create_params
      params.require(:account).permit(:name,:display_name,:email,:password,:password_confirmation)
    end
end
