module ApplicationHelper
	def title
		base_title = "Welcome to Doc & me"
		if @title.empty?
			base_title
		else
			"#{base_title} | #{@title}" 
		end
		
	end
end
