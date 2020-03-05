require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @hero = Team.new(params[:team])

      params[:team][:members].each do |m|
        Member.new(m)
      end
      @mem = Member.all
      erb :team

    end
    
end
