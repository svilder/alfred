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
  has_many :posts
end
