class JobsController < ApplicationController

  def index
   @jobs = Job.all
   @categories = Category.all
   @companies = Company.all
   render "index.html.erb"
  end

  def show
    @job = Job.find_by(id: params[:id])
  end

  def new
    @job = Job.new
    @categories = Category.all
    @companies = Company.all
  end

  def create
    @job = Job.new({title: params[:title], category_id: params[:category_id], description: params[:description], job_responsability: params[:job_responsability], job_requirement: params[:job_requirement], apply_info: params[:apply_info], deadline: params[:deadline]})
    if @job.save
      flash[:success] = "Job Post Created"
      redirect_to "/jobs/#{@job.id}"
    else
      flash[:warning] = "Job Post NOT Created"
      render :new
    end
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
    apply_info = params[:apply_info]
    deadline = params[:deadline]
    category_id = params[:category_id]
    job.save
    flash[:success] = "Job Updated"
    redirect_to "/jobs/#{job.id}"
  end 

  def destroy
    job = Job.find_by(id: params[:id])
    job.destroy
    flash[:warning] = "Post Updated"
    redirect_to "/jobs"
  end

  def search
    search_query = params[:search_input]
    @jobs = Job.where("title LIKE ? OR description LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @jobs.empty?
    flash[:warning] = "No job found in search"
    end
    render :index
  end

end
