class Admin::BlogsController < ApplicationController
	before_action :authenticate_user!

	def index
		@title = "Blog"
		@blogs = Blog.order("created_at DESC")
		#@blogs = Blog.all
	end

	def new
		@blog = Blog.new
		@title = "New Blog"
	end

	def show
		@blog = Blog.find(params[:id])
  		@title = @blog.name
	end

	def create
		@blog = Blog.new(blog_params)
	    if @blog.save
	      redirect_to admin_blogs_path, notice: "The post has been successfully created."
	    else
	      render action: "new"
	    end
		
	end

	def edit
		@title = "Edit Blog"
		@blog = Blog.find(params[:id])
	end

	def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(blog_params)
      redirect_to admin_blogs_path, notice: "The Post has been successfully updated."
    else
      render action: "edit"
    end
  end

	private
	def blog_params
		params.require(:blog).permit(:title, :body)
	end
end
