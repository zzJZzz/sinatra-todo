class CreateListsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.integer :user_id
    end
  end
end
