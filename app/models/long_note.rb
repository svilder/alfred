class LongNote < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  has_rich_text :description
  has_many_attached :images
end
