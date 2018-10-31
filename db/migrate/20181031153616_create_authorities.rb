class CreateAuthorities < ActiveRecord::Migration[5.2]
  def change
    create_table :authorities do |t|
      t.string :name
      t.string :name_kana
      t.references :authority_type, foreign_key: true
      t.bigint :ndl_authorities_id
      t.bigint :see_reference
      t.bigint :see_also_reference
      t.references :authority_see_reference, foregin_key: true
      t.bigint :hypernym
      t.bigint :hyponym
      t.bigint :related
      t.integer :start_year
      t.integer :end_year
      t.string :major_subject
      t.text :history
      t.text :source
      t.text :memo

      t.timestamps
    end
  end
end
