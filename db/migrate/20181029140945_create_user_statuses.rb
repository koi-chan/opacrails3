class CreateUserStatuses < ActiveRecord::Migration[5.2]
  def up
    create_table :user_statuses do |t|
      t.string :name
      t.integer :loan_days

      t.timestamps
    end

    add_reference(:users, :user_status)
  end

  def down
    drop_table :user_statuses

    remove_reference(:users, :user_status)
  end
end
