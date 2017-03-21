class StudentGradeSubject < ActiveRecord::Base
	
	#database relations
	belongs_to :student
	belongs_to :subject
end
