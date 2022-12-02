class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name,               null: false
      t.boolean :complete_status,   null: false,  default: false
      t.datetime :start_date_time,  null: false
      t.datetime :end_date_time
      t.text :url
      t.string :image
      t.text :note

      t.timestamps
    end
  end
end
