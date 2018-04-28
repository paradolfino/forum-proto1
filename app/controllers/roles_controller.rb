class RolesController < ApplicationController
  before_action :set_role, only: [:edit, :update, :destroy]
  
  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    if @role.save(role_params)
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
  end
end
