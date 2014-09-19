class SessionsController < ApplicationController
  include ApplicationHelper
  def new
    
  end
  def create
    user = Cleaner.find_by(username: params[:session][:username].downcase)
    user ||= Company.find_by(username: params[:session][:username].downcase)
    user ||= Admin.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end    
  end
  def destroy
    sign_out
    redirect_to root_url
  end
end
