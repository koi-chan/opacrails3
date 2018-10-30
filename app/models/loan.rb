class Loan < ApplicationRecord
  belongs_to :user
  belongs_to :collection

  validates(:user_id, presence: true)
  validates(:collection_id, presence: true)
  validate(:loan_date, :validate_loan_date)
  validate(:return_date, :validate_return_date)
  validates(:reloan_count, presence: true)

  private

  def validate_loan_date
    if(self.loan_date.blank?)
      self.loan_date = Date.today
    end
  end

  def validate_return_date
    if(self.return_date.blank?)
      self.return_date = self.loan_date + self.user.user_status.loan_days
    elsif(self.return_date < self.loan_date)
      errors.add(:return_date, '返却日が貸出日より過去にはなりません')
    end
  end

end
