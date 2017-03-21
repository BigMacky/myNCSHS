class CreateStudentYearSections < ActiveRecord::Migration
  def change
    create_table :student_year_sections do |t|
      t.string :student_lrn
      t.integer :year_level
      t.string :section_name

      t.timestamps null: false
    end
  end
end
