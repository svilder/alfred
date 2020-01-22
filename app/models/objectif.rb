class Objectif < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :date, presence: true
end
