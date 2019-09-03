class User < ApplicationRecord
  has_secure_password
  has_many :projects

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates_presence_of :password_digest
end
