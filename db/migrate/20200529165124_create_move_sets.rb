class CreateMoveSets < ActiveRecord::Migration[6.0]
  def change
    create_table :move_sets do |t|
      t.integer :pokemon_id
      t.integer :move_id
      t.timestamps
    end
  end
end
