class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :caption
      t.text :description
      t.boolean :state

      t.timestamps
    end
  end
end
