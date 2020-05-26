require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      
      @team = Team.new(params[:team])
      params[:team][:heroes].each do |hero_attrs|
        hero = Hero.new(hero_attrs)
        hero.team = @team
      end
      @teams_heroes = Hero.all.find_all{|hero| hero.team == @team }
      erb :team
    end

end
