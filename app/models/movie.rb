class Movie < ApplicationRecord
  validates :title,
    presence: true,
    uniqueness: { scope: :year }

  validates :year,
    presence: true,
    numericality: true

  scope :alphabetically, -> { order(:title) }

  # Renders the full title of the movie, which is a concatenation
  # of its title and year (eg. "Star Wars (1978)")
  #
  def full_title
    "#{title} (#{year})"
  end
end
