class User < ApplicationRecord

  has_secure_password

  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :profile, {length: {maximum: 200}}

  has_one_attached :image

  def posts
    return Post.where(user_id: self.id)
  end

end
