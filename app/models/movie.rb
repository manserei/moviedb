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

  # Overriding `to_param` is a cheap way to get the movie's title into
  # its URL without having to store slugs in the database.
  #
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
