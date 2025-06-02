class Post < ApplicationRecord
  has_one_attached :thumbnail
  validates :title, presence: true, length: { maximun: 110, minimum: 10 }
  validates :body, presence: true, length: { minimum: 20 }
end
