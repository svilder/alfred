class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :to_do_lists
  has_many :short_notes
  has_many :objectives
  has_many :missions
  has_many :long_notes
  has_many :bookmarks

  COLOR_PREFERENCES = {
    claret:          '#580C1F',
    persianplum:     '#74121D',
    darkchocolate:   '#1E2019',
    darkjunglegreen: '#102012',
    phthalogreen:    '#1F3323',
    prussianblue:    '#2F394D',
    darkblue:        '#1A1B80',
    oxfordblue:      '#001C42',
    darkoxfordblue:  '#000434',
    darkpurple:      '#261132'
  }

end
