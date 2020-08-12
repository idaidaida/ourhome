class Account < ApplicationRecord
    has_secure_password

    validates :name,
        presence: true,
        uniqueness: true,
        format: { with: /\A[a-z0-9]+\z/i }
    
    validates :email,
        presence: true,
        uniqueness: true,
        format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

end
