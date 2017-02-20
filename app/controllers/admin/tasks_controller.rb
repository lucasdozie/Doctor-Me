class Admin::TasksController < ApplicationController
	  def task
	    @title = "Tasks"
	    #@Tasks = Task.order("created_at DESC")
	    @Tasks = Task.where(:status => nil).order("created_at DESC")
	    @Tasks_sip = Task.where(:status => false)
	    @Tasks_completed = Task.where(status: true)

	    @new_task = Task.new
	  end

	  def create
	  	@task = Task.new(task_params)
	  	if @task.save
	  		redirect_to :action => 'task', :notice => "The task has been successfully updated."
	  		respond_to do |f|
			   f.html { redirect_to tasks_url }
			   f.js
		  	end
	  	else
	  		render action: "task", :notice => "Failed please check your input."
	  	end
	  end

	  def delete
	  	Task.find(params[:id]).destroy
    	redirect_to :action => 'task'
	  end

	  private
	  def task_params
	  	params.require(:task).permit(:Todo)	  	
	  end
end
