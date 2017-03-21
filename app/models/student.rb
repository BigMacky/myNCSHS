class Student < ActiveRecord::Base
	validates :student_lrn, uniqueness: true
	validates :student_lrn, :first_name, :last_name, :middle_name, :age, :birthdate, :religion, presence: true

	#database relations
	has_many :student_grade_subjects
	has_many :student_year_section
	has_many :subjects, through: :student_grade_subjects
	has_many :class_sections, through: :student_year_section
	
	has_secure_password
end
