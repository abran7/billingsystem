class Subscribe < ApplicationRecord
  belongs_to :userr    
  
  belongs_to :plan


  
  validates :billingday, presence: true
  validates_uniqueness_of :plan, scope: :userr , :message => Proc.new { |error, attributes| 
    "#{attributes[:plan]} has already been taken." 
  }
end
