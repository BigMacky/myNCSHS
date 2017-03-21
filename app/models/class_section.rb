class ClassSection < ActiveRecord::Base

	#database relations
	has_many :student_year_sections
	has_many :teacher_advise_classes
end
