class Bibliography < ApplicationRecord
  has_many :collections

  validates(:isbn13, length: {is: 13})
end
