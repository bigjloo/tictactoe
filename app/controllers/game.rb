require 'byebug'

get '/game' do
  @game = Game.create(board: Array.new(9) {'|_|'})
  if @game
    erb :gamepage
  else
  redirect to '/'
  end
end

put '/game/update' do
  @game = Game.find(params[:game_id])
  # byebug
  @game.update_attributes(board)
end

