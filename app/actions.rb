get '/' do
	redirect '/parties'
end

get '/parties' do
  @parties = Party.all
  erb :index
end

get '/parties/new' do
	erb :create
end

# method to save a new party, the /new route should point here
post '/parties' do
  Party.create(
  	name: params[:name],
  	adress: params[:address],
  	coordinates: "#{params[:latitude]}/#{params[:longitude]}",
  	date_time: DateTime.strptime(params[:date],"%Y-%m-%dT%H:%M")
  )
end

# show individual post
get '/parties/:id' do
  @party = Party.find(params[:id])
  erb :view
end

# method to update an existing party, the /:id/edit should point here
post '/parties/:id/update' do
	party = Party.find(params[:id])
	party.update(
		name: params[:name],
  		adress: params[:address],
  		coordinates: "#{params[:latitude]}/#{params[:longitude]}",
  		date_time: params[:date]
  	)
  	redirect "/"
end

# form to edit a single party
get '/parties/:id/edit' do
	@party = Party.find(params[:id])
	@latitude, @longitude = @party.coordinates.split("/")
	erb :edit
end