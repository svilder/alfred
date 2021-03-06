class LongNote < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  has_many_attached :images
  has_rich_text :description
end
