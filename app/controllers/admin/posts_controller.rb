class Admin::PostsController < ApplicationController
  def index
  	@title = "post"
  	@users = User.all
  end

  def show
  end
end
