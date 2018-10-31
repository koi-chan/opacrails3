class Bibliography < ApplicationRecord
  has_many :collections

  validate(:isbn13, :validate_isbn13)

  def validate_isbn13
    isbn13 = Lisbn.new(self.isbn13.to_s)
    unless(isbn13.valid?)
      errors.add(:isbn13, 'ISBN13 の形式が正しくありません')
    end
  end
end
