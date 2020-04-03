class Book < ApplicationRecord
  validates :title, {presence: true}
  validates :author, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end
end
