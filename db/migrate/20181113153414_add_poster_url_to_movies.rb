class AddPosterUrlToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :poster_url, :string
  end
end
