class CreateBibliographies < ActiveRecord::Migration[5.2]
  def change
    create_table :bibliographies do |t|
      t.integer :isbn13
      t.string :publisher
      t.string :author
      t.string :title

      t.timestamps
    end
    add_index :bibliographies, :title
  end
end
