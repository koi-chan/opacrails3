class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.references :user, foreign_key: true
      t.references :collection, foreign_key: true
      t.date :loan_date
      t.date :return_date
      t.integer :reloan_count

      t.timestamps
    end
  end
end
