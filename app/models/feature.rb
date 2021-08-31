class Feature < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true
  validates :unitprice, presence: true
  validates :maxlimit, presence: true
  belongs_to :plan
end
