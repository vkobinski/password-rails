class Password < ApplicationRecord

  has_many :user_passwords, dependent: :destroy
  has_many :users, through: :user_passwords

  encrypts :username, deterministic: true
  encrypts :password

  validates :username, presence: true
  validates :password, presence: true
  validates :url, presence: true
end
