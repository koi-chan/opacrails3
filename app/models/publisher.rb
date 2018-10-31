class Publisher < ApplicationRecord

  validates(:place, presence: true)
  validates(:name, presence: true)
  validate(:isbn_code, :validate_isbn_code)

  def publication
    "#{self.place} : #{self.name}"
  end

  def self.publications
    self.all.map do |t|
      t.publication
    end
  end

  def validate_isbn_code
    unless(self.isbn_code =~ /\A(?:0\d{1}|[1-9]\d{1,6})\z/)
      errors.add(isbn_code: 'ISBN 出版者コードが正しくありません')
    end
  end
end
