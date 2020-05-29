require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new
    end

    post '/teams' do
        #binding.pry
        @team = Team.new(params[:team][:name], params[:team][:motto])
        @hero_1 = Hero.new(params[:team][:heros][0][:name], params[:team][:heros][0][:power], params[:team][:heros][0][:biography])
        @hero_2 = Hero.new(params[:team][:heros][1][:name], params[:team][:heros][1][:power], params[:team][:heros][1][:biography])
        @hero_3 = Hero.new(params[:team][:heros][2][:name], params[:team][:heros][2][:power], params[:team][:heros][2][:biography])
        erb :team
    end


end
