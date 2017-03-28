class UsersController < ApplicationController

  def index
    @users = User.all
    @companies = Company.all
    @jobs = Job.all
  end
  
  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find_by(id: params[:id])
    @company = Company.find_by(id: params[:id])
    @job = Job.find_by(id: params[:id])
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

  def notification
    @users = User.all
    @applications = Application.all
    @jobs = Job.all
  end
end

