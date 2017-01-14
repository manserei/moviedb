class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name, null: false
      t.belongs_to :movie, foreign_key: true
      t.belongs_to :actor, foreign_key: true

      t.timestamps
    end
  end
end
