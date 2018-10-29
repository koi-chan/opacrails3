class ChangeColumnToBibliographies < ActiveRecord::Migration[5.2]
  def up
    change_column(:bibliographies, :isbn13, :bigint)
  end

  def down
    change_column(:bibliographies, :isbn13, :integer)
  end
end
