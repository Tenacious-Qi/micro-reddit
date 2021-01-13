# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :comment_body, presence: true,
                           length: { in: 1..20_000, message: 'comment must be between 1 and 20000 characters' }
end
