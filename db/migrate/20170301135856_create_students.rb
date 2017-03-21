class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_lrn
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.date :birthdate
      t.string :religion
      t.string :contact_no
      t.integer :year_level

      t.timestamps null: false
    end
  end
end
