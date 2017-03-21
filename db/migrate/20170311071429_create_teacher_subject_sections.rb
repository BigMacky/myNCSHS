class CreateTeacherSubjectSections < ActiveRecord::Migration
  def change
    create_table :teacher_subject_sections do |t|
      t.string :teacher_id
      t.string :subject_title
      t.string :section_name

      t.timestamps null: false
    end
  end
end
