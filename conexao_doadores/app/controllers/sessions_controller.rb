class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  def create
    user = User.find_by(cnpj: params[:session][:cnpj])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      redirect_to root_path
    end
  end
  
  def new
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
