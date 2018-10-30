class AddColumnToUserStatuses < ActiveRecord::Migration[5.2]
  def change
    add_column :user_statuses, :reloan, :integer
  end
end
