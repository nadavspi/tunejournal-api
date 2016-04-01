class CreateTunes < ActiveRecord::Migration[5.0]
  def change
    create_table :tunes do |t|
      t.string :name
      t.string :composer
      t.integer :year

      t.timestamps
    end
  end
end
