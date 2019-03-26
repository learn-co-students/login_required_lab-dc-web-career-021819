class SessionsController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def destroy
    session.clear
  end

  def create
    session[:name] = params[:name]
    if session[:name] && session[:name].length > 0
      redirect_to
    else
      redirect_to login_path
    end
  end

  private

  def login

  end
end
