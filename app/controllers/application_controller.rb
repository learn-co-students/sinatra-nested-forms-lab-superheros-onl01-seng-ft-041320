require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @my_team = Team.new(params[:team])
        params[:team][:members].each do|member|
            Hero.new(member)
        end
        @team_heroes = Hero.all
        # binding.pry
        erb :team
    end
end
