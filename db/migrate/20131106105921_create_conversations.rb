class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.string :theme
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
