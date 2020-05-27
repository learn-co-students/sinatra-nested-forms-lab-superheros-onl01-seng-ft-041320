require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :team
    end

    post "/teams" do
      @team = Team.new(params[:team])

      params[:team][:superhero].each do |details|
        SuperHero.new(details)
      end
      @teams = Team.all

      erb :super_hero
    end
end
