class Plan < ApplicationRecord
    validates :name, presence:true
    validates :monthlyfees, presence:true
end
