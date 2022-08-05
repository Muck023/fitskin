class AddUsageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :usage_id, :integer, null: false
  end
end
