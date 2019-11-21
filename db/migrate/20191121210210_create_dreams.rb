class CreateDreams < ActiveRecord::Migration[6.0]
  def change
    create_table :dreams do |t|
      t.text :description
      t.integer :rating
      t.references :sleep, null: false, foreign_key: true

      t.timestamps
    end
  end
end
