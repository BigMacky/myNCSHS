class TeacherAdviseClass < ActiveRecord::Base

	#database relations
	belongs_to :teacher
	belongs_to :class
end
