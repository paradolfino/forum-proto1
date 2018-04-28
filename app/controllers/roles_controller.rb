class RolesController < ApplicationController
  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
