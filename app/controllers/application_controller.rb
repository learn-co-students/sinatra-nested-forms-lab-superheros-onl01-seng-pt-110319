require 'pry'
require 'sinatra/base'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    post '/teams' do 
        
        @name = params["team"]["name"]
        @motto = params["team"]["motto"]
        @hero_name = []
        @hero_power = []
        @hero_bio = []
        @heros = params["team"]["members"]

        @heros.each do |hero|
            @hero_name << hero["name"]
            @hero_power << hero["power"]
            @hero_bio << hero["bio"]
       
        end
       
    #    params["team"]["members"].each do |hero|
        erb :team
    end


end
