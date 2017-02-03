module ApplicationHelper
	def title
		base_title = "Welcome to Doc & me"
		if @title.empty?
			base_title
		else
			"#{@title} | #{base_title}" 
		end
		
	end
end
