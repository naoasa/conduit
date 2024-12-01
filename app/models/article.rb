class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 150 }
  validates :body, presence: true, length: { maximum: 1000 }
  validates :tags, presence: true, length: { maximum: 100 }
end
