enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/user' do
	erb :signup
end

post '/user/new' do
	@user = User.find_or_create_by(params['user'])
	redirect to '/login'
end

get '/login' do
	erb :login
end

post '/login' do
	@user1 = User.authentication(params[:email], params[:password])
	# @user2 = User.authentication(params[:email], params[:password])
	if @user
		session1[:id] = @user1[:id]
		# session2[:id] = @user2[:id]
		redirect to '/game'
	else
		redirect to '/login'
end

get '/game' do
	Game.create_board
	if @game
		erb :gamepage
	else
	redirect to '/' 
	end
end

patch '/game/update' do
end

end