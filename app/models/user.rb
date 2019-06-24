class User < ApplicationRecord

  has_secure_password

  #heroku画像アップロード保持のため追加
  has_one_attached :image

  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :profile, {length: {maximum: 200}}

  def posts
    return Post.where(user_id: self.id)
  end

end
