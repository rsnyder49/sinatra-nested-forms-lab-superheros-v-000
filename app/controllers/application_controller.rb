require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :super_heroes
    end
    
    post '/team' do 
      @team = Team.new(params[:team])
  
      params[:team][:members].each do |details|
        @members = Hero.new(details)
      end
      
      @members = Hero.all
      
      erb :teams
    end
    
end
