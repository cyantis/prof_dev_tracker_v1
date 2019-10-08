class ManagersController < ApplicationController

  def new
    @manager = Manager.new
  end

  def create
    @manager = Manager.create(manager_params)

    if @manager.save
      flash[:message] = "Manager Created!"
      redirect_to manager_path(@manager)
    else
      flash[:message] = "All fields are required. Please, enter again!"
      render :new
    end
  end

  def show
    @manager = Manager.find(params[:id])
  end

  private

  def manager_params
    params.require(:manager).permit(:id, :username, :password, :email, :name, :title, :bio, :location_id)
  end

end
