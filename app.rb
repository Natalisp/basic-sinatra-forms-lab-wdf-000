require 'sinatra/base'

class App < Sinatra::Base

get '/newteam' do
  erb :newteam 
end

post '/team' do 
  @team_name = params[:name]
  @coach = params[:coach]
  @point_guard = params[:pg]
  @shooting_guard = params[:sg]
  @pf = params[:pf]
  @sf = params[:sf]
  @c = params[:c]
  erb :team
end

end