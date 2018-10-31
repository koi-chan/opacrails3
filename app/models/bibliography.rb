class Bibliography < ApplicationRecord
  has_many :collections
  belongs_to :publisher

  validate(:isbn13, :validate_isbn13)

  def validate_isbn13
    unless(isbn.valid?)
      errors.add(:isbn13, 'ISBN13 の形式が正しくありません')
    end
  end

  def isbn10
    isbn.isbn10
  end

  def isbn
    Lisbn.new(self.isbn13)
  end
end
