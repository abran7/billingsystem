class Plan < ApplicationRecord
  has_many :subscribes
  has_many :features
  validates :name, presence: true
  validates :monthlyfees, presence: true
end
