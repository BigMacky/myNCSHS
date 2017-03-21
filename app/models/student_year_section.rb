class StudentYearSection < ActiveRecord::Base
	
	#database relations
	belongs_to :student
	belongs_to :class_section
end
