class JobsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show, :search]

  def job_owner
     unless @job.user_id == current_user.id
      flash[:notice] = 'Access denied as you are not owner of this Job'
      redirect_to jobs_path
     end
  end
  def index
   @jobs = Job.all
   @categories = Category.all
   @applications = Application.all
   render "index.html.erb"
  end

  def show
    @job = Job.find_by(id: params[:id])
    @application = Application.find_by(id: params[:id])
  end

  def new
    @job = Job.new
    @categories = Category.all
    
  end

  def create
    @job = Job.new({user_id: params[:user_id], title: params[:title], category_id: params[:category_id], description: params[:description], job_responsability: params[:job_responsability], job_requirement: params[:job_requirement], apply_info: params[:apply_info], deadline: params[:deadline], company_name: params[:company_name], email: params[:email]})
    if @job.save
      flash[:success] = "Job Post Created"
      redirect_to "/jobs/#{@job.id}"
    else
      @categories = Category.all
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
    description = params[:description]
    job_responsability = params[:job_responsability]
    job_requirement = params[:job_requirement]
    apply_info = params[:apply_info]
    job.deadline = params[:deadline]
    category_id = params[:category_id]
    company_name = params[:company_name]
    job.save
    flash[:success] = "Job Updated"
    redirect_to "/jobs/#{job.id}"
  end 

  def destroy
    job = Job.find_by(id: params[:id])
    job.destroy
    flash[:warning] = "Post Deleted"
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
