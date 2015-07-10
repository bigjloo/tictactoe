class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :board, array:true
      t.integer :player_turn
      t.integer :winner
      t.timestamps null:false
    end
  end
end
