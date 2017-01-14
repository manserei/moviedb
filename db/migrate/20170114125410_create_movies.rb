class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.integer :year, null: false

      t.timestamps
    end

    add_index :movies, [:title, :year], unique: true
  end
end
