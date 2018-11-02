class AddUserIdToMessageMesages < ActiveRecord::Migration[5.2]
  def change
    add_column :message_mesages, :user_id, :integer
  end
end
