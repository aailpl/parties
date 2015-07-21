
get '/' do
  @parties = Party.all
  erb :index
end

