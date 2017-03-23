class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render "index.html.erb"
  end
  
  def new
  end

  def show
    @company = Company.find_by(id: params[:id])
  end

  def create
    @company = Company.new({name: params[:name], address: params[:address], email: params[:email], description: params[:description], website: params[:website]})
    @company.save
    redirect_to "/companies/#{@company.id}"
  end

  def edit
    @company = Company.find_by(id: params[:id])
  end

  def update
    company = Company.find_by(id: params[:id])
    company.name = params[:name]
    description = params[:description]
    company.address = params[:address]
    company.email = params[:email]
    website = params[:website]
    company.save
    flash[:success] = "Company Updated"
    redirect_to "/companies/#{company.id}"
  end 

  def destroy
    company = Company.find_by(id: params[:id])
    company.destroy
    flash[:warning] = "Company Deleted"
    redirect_to "/companies"
  end

end
