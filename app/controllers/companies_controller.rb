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
    @company = Company.new({name: params[:name], address: params[:address], email: params[:email], description: params[:description]})
    @company.save
    redirect_to "/companies/#{@company.id}"
  end


end
