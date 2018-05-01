class RolesController < ApplicationController
  before_action :set_role, only: [:edit, :update, :destroy]
  before_action :require_admin
  
  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    if @role.save(role_params)
      redirect_to '/'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @role.update(role_params)
      redirect '/'
    else
      render 'edit'
    end
  end

  def destroy
    @role.destroy
  end
  
  private
  
    def role_params
      params.require(:role).permit(:title)
    end
  
    def set_role
      @role = Role.friendly.find(params[:id])
    end
end
