class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
  end
  
  def search
    @users = User.all
  
    @users = @users.none if params[:name].blank? && params[:hobby].blank?
    
    if params[:name].present?
      @users = @users.where('name LIKE ?', "%#{params[:name]}%")
    end
    
    if params[:hobby].present?
      @users = @users.where(hobby:params[:hobby])
    end
  end
  
end
