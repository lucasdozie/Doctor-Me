class Admin::UsersController < ApplicationController
  def list
  	@title = "Users"
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@users = User.new(users_params)
  	if @users.save
  		redirect_to :action => 'list'
  	else
  		render :action => 'new'
  	end
  end

  def show
  	@user = User.find(params[:id])
  	@title = @user.name
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.update_attributes(users_params)
  	if @user.save
  		redirect_to :action => 'show', :id => @user
  	else
  		render :action => 'edit'
  	end
  end

  def delete
  	User.find(params[:id]).destroy
  	redirect_to :action => 'list'
  end

  private
  def users_params
  	params_require(:user).permit(:name, :email)
  end
end
