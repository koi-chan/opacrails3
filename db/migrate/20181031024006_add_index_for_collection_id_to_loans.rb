class AddIndexForCollectionIdToLoans < ActiveRecord::Migration[5.2]
  def up
    remove_index(:loans, :collection_id)
    add_index(:loans, :collection_id, unique: true, name: 'index_loans_on_collection_id')
  end

  def down
    remove_index(:loans, :collection_id)
    add_index(:loans, :collection_id, name: 'index_loans_on_collection_id')
  end
end
