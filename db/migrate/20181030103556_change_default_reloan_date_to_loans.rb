class ChangeDefaultReloanDateToLoans < ActiveRecord::Migration[5.2]
  def up
    change_column_default(:loans, :reloan_count, 0)
  end

  def down
    change_column_default(:loans, :reloan_count, nil)
  end
end
