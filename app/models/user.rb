class User < ApplicationRecord
  validates :name, presence: true, length:{maximum: 15}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format:{ with: VALID_EMAIL_REGEX}

  has_secure_password
  validates :password, presence: true, length:{minimum: 8,maximum: 32}
end
