class Post < ApplicationRecord
  validates :user_id,
            presence: true
  validates :title,
            presence: true,
            uniqueness:  { case_sensitive: false }
  validates :body,
            presence: true

  belongs_to :user
end
