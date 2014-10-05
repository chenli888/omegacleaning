class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
    @events = @company.events
  end
  
  def new
    @company = Company.new
  end
  
  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = "Create Company Success"
      redirect_to @company
    else
      render 'new'
    end
  end

  private

    def company_params
      params.require(:company).permit(:username, :email, :password,
                                   :password_confirmation)
    end
end
