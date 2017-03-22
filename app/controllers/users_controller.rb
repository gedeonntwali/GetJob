class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation])


    if user.save
      session[:user_id] = user.id
      flash[:success] = "You have created a new account"
      redirect_to '/login'
    else
      flash[:warning] = 'Wrong email or password'
      redirect_to '/signup'
    end
  end
end

