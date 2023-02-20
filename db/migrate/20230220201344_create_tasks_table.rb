class CreateTasksTable < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.integer :list_id
      t.integer :user_id
    end
  end
end
