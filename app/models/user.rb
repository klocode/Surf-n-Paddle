class User < ApplicationRecord
  has_many :posts
  has_secure_password

  validates :name, :picture, presence: true
  validates :name, uniqueness: true

  # default_scope { where(active: true) }

  def to_s
    username
  end

end
