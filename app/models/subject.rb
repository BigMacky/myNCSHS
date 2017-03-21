class Subject < ActiveRecord::Base

	#database relations
	has_many :student_grade_subjects
	has_many :teacher_subject_sections
	has_many :students, through: :student_grade_subjects
	has_many :teachers, through: :teacher_subject_sections
end
