class CreatePublishers < ActiveRecord::Migration[5.2]
  def up
    create_table :publishers do |t|
      t.string :name
      t.string :isbn_code
      t.string :place

      t.timestamps
    end
    add_reference(:bibliographies, :publisher, foreign_key: true)

    Bibliography.all.each do |b|
      Publisher.transaction do
        p = Publisher.find_or_create_by(name: b.publisher)
        b.publisher_id = p.id
        b.save!
      end
    end

    remove_column(:bibliographies, :publisher)
  end

  def down
    add_column(:bibliographies, :publisher, :string)

    Bibliography.all.each do |b|
      Publisher.transaction do
        p = Publisher.find(b.publisher_id)
        b.publisher = p.name
        b.save!
      end
    end

    remove_reference(:bibliographies, :publisher, foreign_key: true)
    drop_table :publishers
  end
end
