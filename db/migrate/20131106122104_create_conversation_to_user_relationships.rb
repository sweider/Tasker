class CreateConversationToUserRelationships < ActiveRecord::Migration
  def change
    create_table :conversation_to_user_relationships do |t|
      t.integer :conversation_id
      t.integer :user_id

      t.timestamps
    end
  end
end
