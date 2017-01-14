class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :gender, limit: 1, null: false
      t.date :birthdate
      t.text :biography

      t.timestamps
    end

    add_index :actors, [:last_name, :first_name]
  end
end
