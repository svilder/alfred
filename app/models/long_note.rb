class LongNote < ApplicationRecord
  belongs_to :users

  validates :title, presence: true
end
