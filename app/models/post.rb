class Post < ApplicationRecord
  belongs_to :author, class_name: "User"

  validates :title, presence: true, length: { in: 3..100 }
  validates :body, presence: true, length: { in: 3..300 }
end
