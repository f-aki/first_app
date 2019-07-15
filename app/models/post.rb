class Post < ApplicationRecord
  has_many :fights, dependent: :destroy
  has_many :goods, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}

  default_scope -> { order(created_at: :desc) }

  def user
    return User.find_by(id: self.user_id)
  end

end
