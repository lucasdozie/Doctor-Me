class Task < ApplicationRecord
	#attr_accessor :Todo, :status
	belongs_to :User

	#validates :Todo, :presence => true, 
					# :length => {:minimum => 10}

end
