class Task < ApplicationRecord
  belongs_to :to_do_list

  validates :description, presence: true

  # status par défaut false
  # dependant destroy
end
