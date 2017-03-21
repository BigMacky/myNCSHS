class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject_title
      t.string :schedule
      t.string :instructor

      t.timestamps null: false
    end
  end
end
