class Mission < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :client_name, presence: true
end
