module ApplicationHelper
	def title
		base_title = "Welcome to Doc & me"
		if @title.nil?
			base_title
		else
			"#{@title} | #{base_title}" 
		end
		
	end
end
