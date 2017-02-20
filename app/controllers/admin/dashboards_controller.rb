class Admin::DashboardsController < ApplicationController
	before_action :authenticate_user!
	def index
		@title = "Dashboard"
		@user_count = User.count()
		@page_count = Page.count()
		@post_count = Blog.count()
	end
end
