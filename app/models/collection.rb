class Collection < ApplicationRecord
  belongs_to :bibliography

  # 貸し出し中なら返却期限を返す
  # @return [Date, nil]
  def loaned?
    if loan = Loan.find_by(collection_id: self.id)
      loan.return_date
    else
      nil
    end
  end
end
