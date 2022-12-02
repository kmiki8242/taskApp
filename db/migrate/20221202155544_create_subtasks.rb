class CreateSubtasks < ActiveRecord::Migration[7.0]
  def change
    create_table :subtasks do |t|
      t.string :name
      t.boolean :complete_status
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.string :task_id

      t.timestamps
    end
  end
end
