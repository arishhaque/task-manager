class UsersController < ApplicationController
  def new; end

  def create
    session[:username] = params[:username]
    flash[:notice] = 'Logged in successfully.'
    redirect_to home_index_path
  end

  def destroy
    session[:username] = nil
    flash[:notice] = 'Logged out successfully.'
    redirect_to login_path
  end
end
