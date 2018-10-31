class CreateAuthoritySeeReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :authority_see_references do |t|
      t.string :name

      t.timestamps
    end
  end
end
