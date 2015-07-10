class CreateUsersGames < ActiveRecord::Migration
  def change
    create_table :users_games do |t|
      t.belongs_to :user, index:true
      t.belongs_to :game, index:true
      t.timestamps null:false
    end
  end
end
