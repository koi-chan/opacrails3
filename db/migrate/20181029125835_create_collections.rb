class CreateCollections < ActiveRecord::Migration[5.2]
  def up
    create_table :collections do |t|
      t.belongs_to :bibliography
      t.string :callnum

      t.timestamps
    end
  end

  def down
    drop_table :collections
  end
end
