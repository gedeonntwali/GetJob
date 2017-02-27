class ApplicationsController < ApplicationController

  def index
    @applications = Application.all
  end

  def new
  end

  def create
    @application = Application.new ({
      first_name: params[:first_name],
      last_name: params[:last_name],
      sex: params[:sex],
      nationality: params[:nationality],
      phone_number: params[:phone_number],
      email: params[:email],
      resume: params[:resume],
      cover_letter: params[:cover_letter],
      highest_degree: params[:highest_degree],
      experience: params[:experience],
      job_id: params[:job_id]

    })

    @application.save
    redirect_to "/applications"


  end
end
