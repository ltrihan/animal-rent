class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :description
      t.string :species
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
