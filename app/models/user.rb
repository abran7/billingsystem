class User < ApplicationRecord
    has_many :subscribes
    has_secure_password
    validates :email, presence:true, format: { with: /\A[^@\s]+@[^@\s]+\z/ , message: "Email invalid"  }, uniqueness: { case_sensitive: false }, length: { minimum: 4, maximum: 254 }
end
