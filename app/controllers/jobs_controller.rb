class JobsController < ApplicationController

  def index
   @jobs = Job.all
   render "index.html.erb"
  end

  def show
    @job = Job.find_by(id: params[:id])
  end

  def new
  end

  def create
    @job = Job.new({title: params[:title], description: params[:description], job_responsability: params[:job_responsability], job_requirement: params[:job_requirement], deadline: params[:deadline]})
    @job.save
    redirect_to "/jobs/#{@job.id}"
  end

  def edit
    @job = Job.find_by(id: params[:id])
  end

  def update
    job = Job.find_by(id: params[:id])
    job.title = params[:title]
    job.description = params[:description]
    job_responsability = params[:job_responsability]
    job_requirement = params[:job_requirement]
    deadline = params[:deadline]
    job.save
    flash[:success] = "Job Updated"
    redirect_to "/jobs/#{job.id}"
  end 

  def destroy
    job = Job.find_by(id: params[:id])
    job.destroy
    redirect_to "/jobs"
  end

  def search
    search_query = params[:search_input]
    @jobs = Job.where("title LIKE ? OR description LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @jobs.empty?
      flash[:info] = "No job found in search"
    end
    render :index
  end

end
