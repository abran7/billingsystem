class Plan < ApplicationRecord
    has_many :subscribes
    validates :name, presence:true
    validates :monthlyfees, presence:true
end
