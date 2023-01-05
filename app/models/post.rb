class Post < ApplicationRecord
  belongs_to :author, class_name: "User"

  validates :title, presence: true, length: { in: 3..100 }
  validates :body, presence: true, length: { in: 3..300 }

  def created_time_formatted
    created_at.strftime("%b %-d, %Y - %l:%M %P")
  end
end
