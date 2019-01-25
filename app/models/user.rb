class User < ApplicationRecord
  has_many :projects

  validates :name, presence: true
  validates :password, presence: true
  validates :password, confirmation: true
end
