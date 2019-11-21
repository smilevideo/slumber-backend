class CreateSleeps < ActiveRecord::Migration[6.0]
  def change
    create_table :sleeps do |t|
      t.string :start_day
      t.string :start_time
      t.string :end_day
      t.string :end_time
      t.text :note
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
