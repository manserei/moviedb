class Role < ApplicationRecord
  validates :movie_id, :actor_id, :name,
    presence: true

  belongs_to :movie
  belongs_to :actor
end
