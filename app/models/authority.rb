class Authority < ApplicationRecord
  belongs_to :authority_type
  belongs_to :authority_see_reference
end
