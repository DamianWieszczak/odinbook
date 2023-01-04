class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { in: 3..100 }
  validates :body, presence: true, length: { in: 3..300 }
end
