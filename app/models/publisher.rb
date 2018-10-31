class Publisher < ApplicationRecord
  def publication
    "#{self.place} : #{self.name}"
  end

  def self.publications
    self.all.map do |t|
      t.publication
    end
  end
end
