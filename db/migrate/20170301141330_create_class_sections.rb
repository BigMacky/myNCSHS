class CreateClassSections < ActiveRecord::Migration
  def change
    create_table :class_sections do |t|
      t.string :section_name
      t.integer :room_number
      t.string :academic_track
      t.string :adviser

      t.timestamps null: false
    end
  end
end
