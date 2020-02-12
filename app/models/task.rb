class Task < ApplicationRecord
  belongs_to :to_do_list

  validates :description, presence: true
end
