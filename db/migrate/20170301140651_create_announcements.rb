class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.date :post_date
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
