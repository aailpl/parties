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
  redirect '/'
end

# show individual post
get '/parties/:id' do
  @party = Party.find(params[:id])
  erb :view
end

# form to edit a single party
get '/parties/:id/edit' do
  
end

# method to update an existing party, the /:id/edit should point here
post '/parties/:id/update' do
  
end

#method to remove a single party
get '/parties/:id/remove' do
  Party.find(params[:id]).destroy		
  redirect '/'
end