class User < ApplicationRecord
  has_many :books
  has_many :reviews
  has_secure_password
  validates :email, uniqueness: true, presence: true, on: :create
  validates :password, presence: true, on: :create
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end
end
