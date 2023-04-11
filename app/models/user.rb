class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true, presence: true, on: :create
  validates :password, presence: true, on: :create
end
