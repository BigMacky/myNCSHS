class TeacherSubjectSection < ActiveRecord::Base

	#databse relations
	belongs_to :teacher
	belongs_to :subject
end
