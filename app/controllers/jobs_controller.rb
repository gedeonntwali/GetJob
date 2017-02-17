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

end
