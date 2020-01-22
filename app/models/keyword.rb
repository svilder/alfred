class Keyword < ApplicationRecord
  belongs_to :long_note

  validates :title, presence: true

  # peut etre mieux avec la gem
end
