class Admin::PagesController < ApplicationController
  def list
    @title = "Pages"
    @pages = Page.order("created_at DESC")
  end

  def new
    @title = "New Pages"
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to :action => 'list', notice: "The #{@page.title} Page has been successfully updated."
    else
      render :action => "new"
    end

  end

  def show
     @page = Page.find(params[:id])
     @title = @page.title
  end

  def edit
     @title = "Edit Page"
     @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      redirect_to :action => 'list', :id => @page
    else
      render :action => 'edit'
    end
  end

  def delete
    Page.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  private
  def page_params
    params.require(:page).permit(:title, :body)
  end
end
