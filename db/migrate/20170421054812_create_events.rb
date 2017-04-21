class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :course_id
      t.integer :user_id
      t.string :schedule
      t.string :city
      t.boolean :is_online
      t.string :contact_name
      t.string :contact_number

      t.timestamps
    end
  end
end
