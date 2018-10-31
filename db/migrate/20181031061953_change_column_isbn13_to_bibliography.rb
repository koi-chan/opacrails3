class ChangeColumnIsbn13ToBibliography < ActiveRecord::Migration[5.2]
  def up
    change_column(:bibliographies, :isbn13, :string)
  end

  def down
    bibliographies = Bibliography.pluck(:id, :isbn13)
    remove_column(:bibliographies, :isbn13)
    add_column(:bibliographies, :isbn13, :bigint)
    bibliographies.each do |id, isbn13|
      b = Bibliography.find(id)
      b.isbn13 = isbn13.to_i
      b.save!(validate: false)
    end
  end
end
