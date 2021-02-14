class User < ApplicationRecord
  with_options presence: true do
    validates :nickname
    validates :first_name
    validates :family_name 
    validates :birthday
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }
  end
  
  validates :profile, length: { maximum: 200 }
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
  validates :password, format: { with: VALID_PASSWORD_REGEX }, length: { minimum: 6 }

  has_many :posts
  has_many :reviews
  has_one  :profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
