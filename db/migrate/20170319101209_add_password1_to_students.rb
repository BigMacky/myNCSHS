class AddPassword1ToStudents < ActiveRecord::Migration
  def change
    add_column :students, :password, :password
  end
end
