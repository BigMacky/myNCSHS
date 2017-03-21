class CreateStudentGradeSubjects < ActiveRecord::Migration
  def change
    create_table :student_grade_subjects do |t|
      t.string :student_lrn
      t.string :subject_title
      t.integer :quarter
      t.decimal :grade

      t.timestamps null: false
    end
  end
end
