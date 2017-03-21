class CreateTeacherAdviseClasses < ActiveRecord::Migration
  def change
    create_table :teacher_advise_classes do |t|
      t.string :teacher_id
      t.string :section_name

      t.timestamps null: false
    end
  end
end
