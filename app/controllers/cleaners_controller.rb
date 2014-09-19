class CleanersController < ApplicationController
  
  def show
    @cleaner = Cleaner.find(params[:id])
  end
  
  def new
    @cleaner = Cleaner.new
  end
  
  def create
    @cleaner = Cleaner.new(cleaner_params)
    if @cleaner.save
      flash[:success] = "Create Cleaner Success"
      redirect_to @cleaner
    else
      render 'new'
    end
  end

  private

    def cleaner_params
      params.require(:cleaner).permit(:username, :email, :password,
                                   :password_confirmation)
    end
end
