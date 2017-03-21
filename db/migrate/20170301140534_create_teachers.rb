class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :license_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :contact_no

      t.timestamps null: false
    end
  end
end
