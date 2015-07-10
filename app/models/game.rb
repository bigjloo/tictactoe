class Game < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users_games
  has_many :users, :through => :users_games

	# def create_board
 # 		@game = Game.create(board: Array.new(9) {'|_|'})

 # 	end

 	def update (n1,n2)
 		patch

 	end

 	def result ()

 	end

end
