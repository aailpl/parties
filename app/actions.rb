get '/' do
  @parties = Party.all
  erb :index
end

# form to edit a single party
get '/:id/edit' do
  
end

# form to create a new party
get '/new' do
  
end

get '/create' do
	erb :create
end

# method to save a new party, the /new route should point here
post '/create' do
  Party.create(
  	name: params[:name],
  	adress: params[:address],
  	coordinates: "#{params[:latitude]}/#{params[:longitude]}",
  	date_time: DateTime.strptime(params[:date],"%Y-%m-%dT%H:%M")
  )
end

