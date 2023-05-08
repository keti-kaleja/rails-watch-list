class Movie < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  has_many :bookmarks
  has_many :lists, through: :bookmarks

  # before_destroy :check_for_bookmarks

  # private

  # def check_for_bookmarks
  #   if bookmarks.any?
  #     errors.add(:base, 'Movie cannot be deleted because it has bookmarks')
  #     throw(:abort)
  #   end
  # end
end
