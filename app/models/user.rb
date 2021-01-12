# frozen_string_literal: true

# data model for users of micro-reddit service
class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  
  validates :username, presence: true, uniqueness: true,
                       length: { in: 3..20, message: 'username must be between 3 and 20 characters' }
  validates :password, presence: true,
                       length: { in: 8..50, message: 'password must be between 8 and 50 characters' }
end
