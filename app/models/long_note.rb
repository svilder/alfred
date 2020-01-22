class LongNote < ApplicationRecord
  belongs_to :user
  has_many :keywords

  validates :title, presence: true
end
