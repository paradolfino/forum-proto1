class SessionsController < ApplicationController
  def new
  end

  def create
    @user = Member.find_by_email(params[:session][:email])
    if @member && @member.authenticate(params[:session][:password])
      session[:member_id] = @member.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:member_id] = nil
    redirect_to '/'
  end
end