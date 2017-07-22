class AddTagsToConversation < ActiveRecord::Migration[5.0]
  def change
    add_column :conversations, :tags, :text, array:true, default: []
  end
end
