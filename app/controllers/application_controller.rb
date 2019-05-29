require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

	get '/' do
		erb :super_hero
	end

	post '/heroes' do
		@team = Team.new (params["team"].reject{|k|k=="heroes"})
		params["team"]["heroes"].each do |hero|
			@team.heroes << Hero.new(hero)
		end
		binding.pry
		erb :team

	end

end
