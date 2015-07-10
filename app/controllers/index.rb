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
	@user = User.authentication(params[:email], params[:password])
	if @user
		sessions[:id] = @user[:id]
		erb :index
	else
		redirect to '/'
	end
end