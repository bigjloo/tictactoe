class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users_games
  has_many :games, :through => :users_games
end
