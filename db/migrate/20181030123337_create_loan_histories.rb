class CreateLoanHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :loan_histories do |t|
      t.references :user, foreign_key: true
      t.references :collection, foreign_key: true
      t.date :loan_date
      t.date :return_date

      t.timestamps
    end
  end
end
