class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  # TODO: the [movie, list] pairings should be unique.
  validates :movie, uniqueness: { scope: :list }
end
