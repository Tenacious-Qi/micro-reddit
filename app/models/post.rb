# frozen_string_literal: true

# models a User's post
class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true,
                    length: { in: 1..300, message: 'title must be between 1 and 300 characters' }
  validates :link, presence: true
  validates_format_of :link,
                      with: %r{\A(https?://)?([\da-z\.-]+)\.([a-z\.]{2,6})([/\w\.-]*)*/?\Z}i
end
