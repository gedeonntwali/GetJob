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
    @job = Job.new({title: params[:title], description: params[:description]})
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
    job.save
    flash[:success] = "Job Updated"
    redirect_to "/jobs/#{job.id}"
  end 

  def destroy
    job = Job.find_by(id: params[:id])
    job.destroy
    redirect_to "/jobs"
  end

end
