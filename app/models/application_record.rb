class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  	def self.search(search)
	  where("name LIKE ? OR body LIKE ? OR Todo LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
	end
end
