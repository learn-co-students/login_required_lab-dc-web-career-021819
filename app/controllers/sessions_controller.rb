class SessionsController < ApplicationController
  def new

  end

  def create
    return redirect_to login_path until !params[:name].nil? && !params[:name].empty?
    session[:name] = params[:name]
    redirect_to secret_path
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
