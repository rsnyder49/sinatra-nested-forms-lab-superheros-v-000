require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :super_heroes
    end
    
    post '/team' do 
      
      
      erb :teams
      


end
