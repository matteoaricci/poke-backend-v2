class CreatePokeTeamMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :poke_team_moves do |t|
      t.integer :poke_on_team_id
      t.integer :move_id
      t.timestamps
    end
  end
end
