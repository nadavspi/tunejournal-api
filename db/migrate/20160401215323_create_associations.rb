class CreateAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :associations do |t|
      t.integer :list_id
      t.integer :tune_id

      t.timestamps
    end
  end
end
