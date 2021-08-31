class Record < ApplicationRecord
  validates :payment, presence: true
  validates :paymentdate, presence: true
end
