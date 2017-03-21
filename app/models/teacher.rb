class Teacher < ActiveRecord::Base

	#database relations
	has_many :announcements
	has_many :teacher_advise_classes
	has_many :teacher_subject_section

	has_many :class_sections, through: :teacher_advise_classes
	has_many :subjects, through: :teacher_subject_section
end
