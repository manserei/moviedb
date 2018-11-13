class Movie < ApplicationRecord
  validates :title,
    presence: true,
    uniqueness: { scope: :year }

  validates :year,
    presence: true,
    numericality: true

  scope :alphabetically, -> { order(:title) }

  has_many :roles,
    dependent: :destroy

  has_many :actors,
    through: :roles

  # Poster Fetching
  attr_accessor :skip_poster_fetcher
  before_save :fetch_movie_poster, unless: :skip_poster_fetcher

  # Renders the full title of the movie, which is a concatenation
  # of its title and year (eg. "Star Wars (1977)")
  #
  # Note: we're using `title_was` and `year_was` instead of `title`
  # and `year` so we're still displaying the original data while the
  # record is being edited.
  #
  def full_title
    "#{title_was} (#{year_was})"
  end

  # Overriding `to_param` is a cheap way to get the movie's title into
  # its URL without having to store slugs in the database.
  #
  def to_param
    "#{id}-#{title.parameterize}"
  end

  # Try and fetch a movie poster through the PosterFetcher service.
  def fetch_movie_poster
    self.poster_url = PosterFetcher.call(title)
  end
end
