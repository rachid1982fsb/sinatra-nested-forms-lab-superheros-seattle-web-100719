require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/team' do
        @team_name=params[:team][:name]
        @team_motto=params[:team][:motto]
        @heroes=[]
        params[:team][:members].each do |member|
            @heroes << member
        end
        erb :team
    end
    


end
