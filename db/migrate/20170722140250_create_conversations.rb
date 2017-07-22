class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.string :intercom_id
      t.integer :messages_count
      t.string :company_name
      t.string :company_id
      t.integer :total_time_in_hours
      t.string :messages
      t.string :user_email
      t.string :user_intercom_id
      t.string :user_user_id
      t.string :user_name
      t.string :assignee
      t.integer :cost

      t.timestamps
    end
  end
end
