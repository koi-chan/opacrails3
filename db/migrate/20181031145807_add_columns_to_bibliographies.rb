class AddColumnsToBibliographies < ActiveRecord::Migration[5.2]
  def change
    add_column(:bibliographies, :jan13, :string)
    add_column(:bibliographies, :title_kana, :string)
    add_column(:bibliographies, :title_infomation, :string)
    add_column(:bibliographies, :first_publishing_date, :date)
    add_column(:bibliographies, :publishing_date, :date)
    add_column(:bibliographies, :edition, :string)
    add_column(:bibliographies, :page, :string)
    add_column(:bibliographies, :size, :string)
    add_column(:bibliographies, :physical_description, :text)
    add_column(:bibliographies, :summary, :text)
    add_column(:bibliographies, :note, :text)
  end
end
