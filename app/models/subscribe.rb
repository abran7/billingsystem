class Subscribe < ApplicationRecord
    belongs_to :user
    belongs_to :plan
    
    validates :billingday, presence:true
end
