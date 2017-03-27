class ApplicationsController < ApplicationController

  def index
    @applications = Application.all
    @jobs = Job.all
  end

  def new
    @application = Application.new
    @jobs = Job.all
    @job = Job.find_by(id: params[:job_id])
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
      addition_docs: params[:addition_docs],
      cover_letter: params[:cover_letter],
      highest_degree: params[:highest_degree],
      experience: params[:experience],
      job_id: params[:job_id]

    })

    if @application.save
      ApplyMailer.applicant_confirmation(@application).deliver_now
    end
    redirect_to "/applications"

  end

  def download
    send_file '@application.resume.url', :type=>"application/pdf", :x_sendfile=>true
  end


end
