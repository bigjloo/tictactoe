class Game < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users_games
  has_many :users, :through => :users_games
end
