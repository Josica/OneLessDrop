class User < ActiveRecord::Base
  validates :name, :password, :counter, presence: true
  validates :username, presence: true, uniqueness: true

  has_many :types
  has_many :answers
  has_secure_password
end
