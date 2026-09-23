class User < ApplicationRecord
  validates :username,
            presence: true,
            # 'Monster' and 'monster' cannot coexist:
            uniqueness: { case_sensitive: false }
  validates :password,
            presence: true,
            length: { in: 6..16 }

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
